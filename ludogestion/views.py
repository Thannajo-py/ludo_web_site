import requests
import json
import datetime


from django.shortcuts import render
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required, permission_required


from ludorecherche.models import Background, Game, Designer, Artist, Publisher, AddOn, MultiAddOn
from ludorecherche.views import detail, add_on_detail, multi_add_on_detail
from .forms import LogInForm
from .models import Reservation


def base(request):  # give the basic context of each page
    authentified = False
    form = LogInForm()
    if request.user.is_authenticated:
        authentified = True
    interface = Background.objects.get(name='Interface')
    context = {
        'interface': interface,
        'authentified': authentified,
        'form': form,
    }
    return context


@permission_required('ludorecherche.add_game') # decorator checking if user have right to add game
def find_a_game_page(request):  # base page for adding a game
    context = base(request)
    return render(request, 'ludogestion/find_a_game.html', context)


@permission_required('ludorecherche.add_game') # decorator checking if user have right to add game
def retrieve_game_from_api(request):  # build the answer API BGA page
    context = base(request)

    class GameAtlas:  # Storing BGA API answer
        def __init__(self, name, picture, id):
            self.name = name
            self.picture = picture
            self.id = id

    query = request.GET.get('query')
    api_answer = requests.get(f'https://api.boardgameatlas.com/api/search?name={query}&client_id=JLBr5npPhV')
    api_answer = json.loads(api_answer.text)
    api_answer = api_answer['games']
    api_answer = [GameAtlas(game['name'], game['thumb_url'], game['id']) for game in api_answer]
    context.update({
        'api_answer': api_answer,
    })
    return render(request, 'ludogestion/find_a_game.html', context)


@permission_required('ludorecherche.add_game') # decorator checking if user have right to add game
@transaction.atomic  # ensure all the register go well or cancel change in database
def add_a_game(request, game_id):  # Register selected game from page to database if not present
    context = base(request)
    api_answer = requests.get(f'https://api.boardgameatlas.com/api/search?ids={game_id}&client_id=JLBr5npPhV')
    api_answer = json.loads(api_answer.text)
    api_answer = api_answer['games']
    api_answer = api_answer[0]
    try:
        if api_answer['type'] == 'game':
            Game.objects.get(name=api_answer['name'])
        else:
            AddOn.objects.get(name=api_answer['name'])
        context.update({
            'message': 'Ce jeu est déjà dans la ludothèque',
        })
        return render(request, 'ludogestion/find_a_game.html', context)
    except ObjectDoesNotExist:
        if api_answer['type'] == 'game':
            registered_game = Game.objects.create(
                name=api_answer['name'],
                english_name=api_answer['name'],
                player_min=api_answer['min_players'],
                player_max=api_answer['max_players'],
                external_image=api_answer['image_url'],
                thumb_image=api_answer['thumb_url'],
                bgg_link=api_answer['url'],
                age=api_answer['min_age'],
                max_time=api_answer['max_playtime'],
                )
            registered_game.save()
        else:
            registered_game = AddOn.objects.create(
                name=api_answer['name'],
                english_name=api_answer['name'],
                player_min=api_answer['min_players'],
                player_max=api_answer['max_players'],
                external_image=api_answer['image_url'],
                thumb_image=api_answer['thumb_url'],
                bgg_link=api_answer['url'],
                age=api_answer['min_age'],
                max_time=api_answer['max_playtime'],
            )
            registered_game.save()
        try:
            try:
                main_designer = Designer.objects.get(name=api_answer['primary_designer']['name'])
            except ObjectDoesNotExist:
                main_designer = Designer.objects.create(name=api_answer['primary_designer']['name'])
                main_designer.save()
            registered_game.designers.add(main_designer)
        except KeyError:
            pass
        artists_list = api_answer['artists']
        for artist in artists_list:
            try:
                game_artist = Artist.objects.get(name=artist)
            except ObjectDoesNotExist:
                game_artist = Artist.objects.create(name=artist)
                game_artist.save()
            registered_game.artists.add(game_artist)
        try:
            try:
                main_publisher = Publisher.objects.get(name=api_answer['primary_publisher']['name'])
            except ObjectDoesNotExist:
                main_publisher = Publisher.objects.create(name=api_answer['primary_publisher']['name'])
                main_publisher.save()
            registered_game.publishers.add(main_publisher)
            registered_game.save()
        except KeyError:
            pass
        context.update({
            'message': 'Enregistrement réalisé avec succès',
        })
        return render(request, 'ludogestion/find_a_game.html', context)


def log_in(request):  # Handle login attempt
    context = base(request)
    if request.method == "POST":
        username = request.POST['name']
        password = request.POST['password']
        context.update({
        'name': username,
        })
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            context['authentified'] = True
            return render(request, 'ludogestion/login_success.html', context)
        else:
            return render(request, 'ludogestion/login_failed.html', context)
    else:
        return render(request, 'ludogestion/login_failed.html', context)


def log_out(request):  # handle logout attempt
    context = base(request)
    context['authentified'] = False
    logout(request)
    return render(request, 'ludogestion/logout_success.html', context)

def add_reservation(request, type, id):
    #ADD BUTTON and TEST
    user = request.user
    reservation = Reservation.object.create()
    reservation.expired_at = reservation.created_at + datetime.timedelta(reservation.duration)
    reservation.user_id = user
    if type == "game":
        reservation_object = Game.objects.get(pk=id)
        reservation.game_id = reservation_object
        reservation.save()
        return detail(request, id)
    elif type == "add_on":
        reservation_object = AddOn.objects.get(pk=id)
        reservation.addon_id = reservation_object
        reservation.save()
        return add_on_detail(request, id)
    else:
        reservation_object = MultiAddOn.objects.get(pk=id)
        reservation.multiaddon_id = reservation_object
        reservation.save()
        return multi_add_on_detail(request, id)


