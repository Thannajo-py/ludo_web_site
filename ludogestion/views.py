import requests
import json
import datetime


from django.shortcuts import render
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import permission_required


from ludorecherche.models import Background, Game, Designer, Artist, Publisher, AddOn, MultiAddOn, Mechanism, Topic
from .forms import LogInForm, AddAGameForm
from .models import Reservation, ReservationRule



CLIENT_ID = "JLBr5npPhV"
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
    api_answer = requests.get(f'https://api.boardgameatlas.com/api/search?name={query}&client_id={CLIENT_ID}')
    api_answer = json.loads(api_answer.text)
    api_answer = api_answer['games']
    api_answer = [GameAtlas(game['name'], game['thumb_url'], game['id']) for game in api_answer]
    context.update({
        'api_answer': api_answer,
    })
    return render(request, 'ludogestion/find_a_game.html', context)

def recall_api(type, api_answer, model):
    if type in api_answer and len(api_answer.get(type)) > 0:
        all_type_list = json.loads(requests.get(
            f'https://api.boardgameatlas.com/api/game/{type}?pretty=true&client_id={CLIENT_ID}').text).get(type)
        known = []
        unknown = []
        for member in api_answer.get(type):
            for m in all_type_list:
                if (member.get('id') == m.get('id')):
                    try:
                        model.objects.get(name=m.get('name'))
                        known.append(m.get('name'))
                    except ObjectDoesNotExist:
                        unknown.append(m.get('name'))
        return (known, unknown)


def check_api_answer(api_answer):
    check_parameters = ['type', 'name']
@permission_required('ludorecherche.add_game') # decorator checking if user have right to add game
@transaction.atomic  # ensure all the register go well or cancel change in database
def add_a_game(request, game_id):  # Register selected game from page to database if not present
    context = base(request)

    api_answer = requests.get(f'https://api.boardgameatlas.com/api/search?ids={game_id}&client_id={CLIENT_ID}')
    if api_answer.status_code != 200:
        context.update({
            'message': 'Erreur de Board Game Atlas',
        })
        return render(request, 'ludogestion/find_a_game.html', context)

    api_answer = json.loads(api_answer.text)
    if 'games' not in api_answer:
        context.update({
            'message': 'Erreur dans la requête de retour'
        })
    api_answer = api_answer.get('games')
    if len(api_answer) == 0:
        context.update({
            'message': 'Erreur de Board Game Atlas',
        })
        return render(request, 'ludogestion/find_a_game.html', context)
    api_answer = api_answer[0]

    try:
        if api_answer.get('type') is None:
            context.update({
                'message': 'Ce jeu est déjà dans la ludothèque',
            })
            return render(request, 'ludogestion/find_a_game.html', context)
        elif api_answer.get('type') == 'game':
            Game.objects.get(name=api_answer['name'])
        elif api_answer.get('type') == 'expansion':
            try:
                AddOn.objects.get(name=api_answer['name'])
            except ObjectDoesNotExist:
                MultiAddOn.objects.get(name=api_answer['name'])
        context.update({
            'message': 'Ce jeu est déjà dans la ludothèque',
        })
        return render(request, 'ludogestion/find_a_game.html', context)

    except ObjectDoesNotExist:
        add_form = AddAGameForm(initial={
            'name': f"{api_answer.get('name')}",
            'english_name': f"{api_answer.get('name')}",
            'player_min': f"{api_answer.get('min_players')}",
            'player_max': f"{api_answer.get('max_players')}",
            'external_image': f"{api_answer.get('image_url')}",
            'thumb_image': f"{api_answer.get('thumb_url')}",
            'bgg_link': f"{api_answer.get('url')}",
            'age': f"{api_answer.get('min_age')}",
            'max_time': f"{api_answer.get('max_playtime')}",
        })

        if api_answer['type'] == 'game':
            context.update({'type': 'game'})
        else:
            context.update({'type': 'extension'})
        if 'primary_designer' in api_answer:
            try:
                Designer.objects.get(name=api_answer.get('primary_designer').get('name'))
                add_form.initial['designers'] = api_answer.get('primary_designer').get('name')
            except ObjectDoesNotExist:
                add_form.initial['add_designer'] = api_answer.get('primary_designer').get('name')

        artists_list = api_answer.get('artists')
        known_artist = []
        unknown_artist = []
        for artist in artists_list:
            try:
                Artist.objects.get(name=artist)
                known_artist.append(artist)
            except ObjectDoesNotExist:
                unknown_artist.append(artist)
        add_form.initial['add_artist'] = ", ".join(unknown_artist)
        add_form.initial['artists'] = known_artist

        if 'primary_publisher' in api_answer:
            try:
                Publisher.objects.get(name=api_answer.get('primary_publisher').get('name'))
                add_form.initial['publishers'] = api_answer.get('primary_publisher').get('name')
            except ObjectDoesNotExist:
                add_form.initial['add_publisher'] = api_answer.get('primary_publisher').get('name')

        (known_mechanics, unknown_mechanics) = recall_api('mechanics', api_answer, Mechanism)
        add_form.initial['mechanism'] = known_mechanics
        add_form.initial['add_mechanism'] = ", ".join(unknown_mechanics)
        (known_topics, unknown_topics) = recall_api('categories', api_answer, Topic)
        add_form.initial['topic'] = known_topics
        add_form.initial['add_topic'] = ", ".join(unknown_topics)

        context.update({
            'add_form': add_form,
        })
        return render(request, 'ludogestion/add_a_game.html', context)


def log_in_page(request):
    context = base(request)
    return render(request, 'ludogestion/login.html', context)


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


def add_reservation(request, type_name, type_id):
    user = request.user
    reservation_result = 2
    reservation_number = Reservation.objects.filter(user_id=user)
    if len(reservation_number) < ReservationRule.objects.get(pk=1).max_number:
        reservation_result = 1
        reservation = Reservation.objects.create()
        reservation.reservation = ReservationRule.objects.get(pk=1)
        reservation.expired_at = reservation.created_at + datetime.timedelta(reservation.reservation.duration)
        reservation.user_id = user
        if type_name == "game":
            reservation_object = Game.objects.get(pk=type_id)
            reservation.game_id = reservation_object
            reservation.save()
        elif type_name == "addon":
            reservation_object = AddOn.objects.get(pk=type_id)
            reservation.addon_id = reservation_object
            reservation.save()
        else:
            reservation_object = MultiAddOn.objects.get(pk=type_id)
            reservation.multiaddon_id = reservation_object
            reservation.save()
    return reservation_page(request, reservation_result)


def reservation_page(request, reservation_result=0):
    reservations = Reservation.objects.filter(user_id=request.user.id)
    context = base(request)
    context.update({
        "reservations": reservations,
        "reservation_result": reservation_result,
    })
    return render(request, 'ludogestion/reservation.html', context)


def remove_reservation(request, reservation_id):
    reservation = Reservation.objects.get(id=reservation_id)
    reservation.delete()
    return reservation_page(request)


def adding_page(request):
    add_form = AddAGameForm(initial={"name": "bob",'extension_type': 1,'language':['Anglais','Français'],'publishers':'Asmodée'})
    context = base(request)
    context.update({
        "add_form": add_form
    })
    return render(request, 'ludogestion/add_a_game.html', context)



""" if api_answer['type'] == 'game':
            add_form.name.initial=api_answer.get('name')
            registered_game = Game.objects.create(
                name=api_answer.get('name'),
                english_name=api_answer.get('name'),
                player_min=api_answer.get('min_players'),
                player_max=api_answer.get('max_players'),
                external_image=api_answer.get('image_url'),
                thumb_image=api_answer.get('thumb_url'),
                bgg_link=api_answer.get('url'),
                age=api_answer.get('min_age'),
                max_time=api_answer.get('max_playtime'),
                )
            registered_game.save()
        else:
            registered_game = AddOn.objects.create(
                name=api_answer.get('name'),
                english_name=api_answer.get('name'),
                player_min=api_answer['min_players'],
                player_max=api_answer['max_players'],
                external_image=api_answer['image_url'],
                thumb_image=api_answer['thumb_url'],
                bgg_link=api_answer['url'],
                age=api_answer['min_age'],
                max_time=api_answer['max_playtime'],
            )
            registered_game.save()
        if 'primary_designer' in api_answer:
            try:
                main_designer = Designer.objects.get(name=api_answer['primary_designer']['name'])
            except ObjectDoesNotExist:
                main_designer = Designer.objects.create(name=api_answer['primary_designer']['name'])
                main_designer.save()
            registered_game.designers.add(main_designer)
        artists_list = api_answer['artists']
        for artist in artists_list:
            try:
                game_artist = Artist.objects.get(name=artist)
            except ObjectDoesNotExist:
                game_artist = Artist.objects.create(name=artist)
                game_artist.save()
            registered_game.artists.add(game_artist)
        if 'primary_publisher' in api_answer:
            try:
                main_publisher = Publisher.objects.get(name=api_answer['primary_publisher']['name'])
            except ObjectDoesNotExist:
                main_publisher = Publisher.objects.create(name=api_answer['primary_publisher']['name'])
                main_publisher.save()
            registered_game.publishers.add(main_publisher)
            registered_game.save()
        context.update({
            'message': 'Enregistrement réalisé avec succès',
        })
        return render(request, 'ludogestion/find_a_game.html', context)
"""