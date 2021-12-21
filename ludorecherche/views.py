from random import randint

from django.shortcuts import render, get_object_or_404


import ludorecherche.models as models
from .models import Game, AddOn, MultiAddOn, Designer, Artist, Publisher, PlayingMode, Tag, Topic,\
    Mechanism, Language, Background
from ludoaccueil.models import Comment
from .forms import SearchAdvForm
from ludogestion.forms import LogInForm
from ludoaccueil.forms import CommentForm
from ludogestion.models import Reservation


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


def index(request):
    context = base(request)
    games = Game.objects.order_by('-created_at')[:12]
    context.update({
        'games': games,
    })
    return render(request, 'ludorecherche/index.html', context)


def list_all(request):
    context = base(request)
    games = Game.objects.order_by('-created_at')
    context.update({
        'games': games,
    })
    return render(request, 'ludorecherche/list_all.html', context)


def common_detail(variable, context):
    form_comment = CommentForm()
    artists = [artist for artist in variable.artists.all()]
    designers = [designer for designer in variable.designers.all()]
    publishers = [publisher for publisher in variable.publishers.all()]
    languages = [language for language in variable.language.all()]
    playing_modes = [playing_mode for playing_mode in variable.playing_mode.all()]

    context.update({
        'designers': designers,
        'artists': artists,
        'publishers': publishers,
        'playing_modes': playing_modes,
        'languages': languages,
        'form_comment': form_comment,
    })
    return context


def detail(request, game_pk):  # Game detail
    context = base(request)
    game = get_object_or_404(Game, pk=game_pk)
    multi_add_ons = [multi_add_on for multi_add_on in game.multi_add_ons.all()]
    context = common_detail(game, context)
    add_ons = AddOn.objects.filter(game__name__icontains=game.name)
    tags = [tag for tag in game.tag.all()]
    topics = [topic for topic in game.topic.all()]
    mechanisms = [mechanism for mechanism in game.mechanism.all()]
    comments, stock, color = game_type_common_part(
        {'game__name__icontains': game.name},
        {'game': game_pk},
        game,
        game.difficulty
    )
    context.update({
        'variable': game,
        'color': color,
        'add_ons': add_ons,
        'comments': comments,
        'type': 'game',
        'stock': stock,
        'multi_add_ons': multi_add_ons,
        'tags': tags,
        'mechanisms': mechanisms,
        'topics': topics,
    })
    return render(request, 'ludorecherche/detail.html', context)


def add_on_detail(request, add_on_pk):
    context = base(request)
    add_on = get_object_or_404(AddOn, pk=add_on_pk)
    context = common_detail(add_on, context)
    game = add_on.game
    comments, stock, color = game_type_common_part(
        {'add_on__name__icontains': add_on.name},
        {'addon': add_on_pk},
        add_on.stock,
        add_on.difficulty
    )
    context.update({
        'variable': add_on,
        'color': color,
        'link_game': game,
        'type': 'addon',
        'comments': comments,
        'stock': stock
    })
    return render(request, 'ludorecherche/detail.html', context)


def game_type_common_part(comments_kwargs, reserved_kwargs, game, difficulty):
    comments = Comment.objects.filter(**comments_kwargs)
    reserved = Reservation.objects.filter(**reserved_kwargs)
    stock = game.stock - len(reserved)
    # give the difficulty symbol his color
    if difficulty:
        color = 'green' if difficulty.name.lower() in ['famille', 'ambiance'] else 'orange'\
            if difficulty.name.lower() in ['vétéran'] else 'red'
    else:
        color = 'blue'

    return comments, stock, color


def lucky(request):
    games = Game.objects.all()
    print(Game.objects.get(name="Pix").designers.all())
    game = games[randint(0, len(games) - 1)]
    return detail(request, game.pk)


def search_page(request):
    context = base(request)
    search_form = SearchAdvForm(request.GET)
    context.update({
        'search_form': search_form,
    })
    return render(request, 'ludorecherche/search_page.html', context)


def extend_number_of_player(game):  # check if some add_on extend the max or min number of player
    all_add_ons = AddOn.objects.filter(game__pk=game.pk)
    minimum_player = game.player_min if game.player_min else 0
    maximum_player = game.player_max if game.player_max else 999
    for add_on in all_add_ons:
        if add_on.player_min < minimum_player:
            minimum_player = add_on.player_min
        if add_on.player_max > maximum_player:
            maximum_player = add_on.player_max
    all_multi_add_ons = MultiAddOn.objects.filter(games__pk=game.pk)
    for add_on in all_multi_add_ons:
        if add_on.player_min < minimum_player:
            minimum_player = add_on.player_min
        if add_on.player_max > maximum_player:
            maximum_player = add_on.player_max
    return minimum_player, maximum_player


def search(request):  # handle basic nav search
    context = base(request)
    query = request.GET.get('query')
    print(query)
    if not query:
        games = Game.objects.all()
    else:
        games = []
        all_game = Game.objects.all()
        # checking if add_ons change the minimum or the maximum number of player of the game
        for game in all_game:
            designers = " ".join([designer.name.lower() for designer in game.designers.all()])
            artists = " ".join([artist.name.lower() for artist in game.artists.all()])
            publishers = " ".join([publisher.name.lower() for publisher in game.publishers.all()])
            kinds = " ".join([kind.name.lower() for kind in game.playing_mode.all()])
            tags = " ".join([tag.name.lower() for tag in game.tag.all()])
            minimum_player, maximum_player = extend_number_of_player(game)

            if query.isnumeric() and minimum_player <= int(query) <= maximum_player:
                games += [game]
                continue
            # check if the game correspond to any of the criteria:
            if query.lower() in game.name.lower()\
                    or game.language.name != None  and query.lower() in game.language.name.lower()\
                    or query.lower() in kinds\
                    or game.difficulty and query.lower() in game.difficulty.name.lower()\
                    or game.tag and query.lower() in tags\
                    or query.lower() in designers\
                    or query.lower() in artists\
                    or query.lower() in publishers:
                games += [game]
    title = f"Résultats pour {context['interface'].theme.query_name} du {query}"
    context.update({
        'games': games,
        'title': title
    })
    return render(request, 'ludorecherche/search_result.html', context)


def not_present_on_query_or_valid(element, group):  # check if field is blank or return data
    try:
        return True if not group or element.name in group else False
    except AttributeError:
        return True


def all_tags_present(game, query_tags):  # check if field is blank or return data
    game_tag_list = [tag.name for tag in game.tag.all()]
    # not valid is there is more tag in the query than in the game
    all_tags_in_game = False if len(query_tags) > len(game_tag_list) else True
    if all_tags_in_game:
        for tag in query_tags:
            if tag not in game_tag_list:
                # if any of the tags aren't present in the game it's false
                all_tags_in_game = False
                break
    return all_tags_in_game


def any_game_playing_mode_present(game, query_game_playing_mode):  # check if field is blank or return data
    game_playing_mode_list = [playing_mode.name for playing_mode in game.playing_mode.all()]
    playing_mode_tag = False if query_game_playing_mode else True
    for game_playing_mode in game_playing_mode_list:
        if game_playing_mode in query_game_playing_mode:
            playing_mode_tag = True
            break
    return playing_mode_tag


def get_data_list_or_default(expression, value, default_value):  # check if field is blank or return data
    try:
        partial_query = expression(value)
    except KeyError:
        partial_query = default_value
    return partial_query


def get_data_or_default(expression, value, default_value):  # check if field is blank or return data
    try:
        partial_query = expression[value]
    except KeyError:
        partial_query = default_value
    return partial_query


def advanced_search(request):  # search through database for specific games with multifactorial criteria
    context = base(request)
    form = SearchAdvForm(request.POST)
    playing_time = get_data_or_default(form.data, 'playing_time', "")
    player_number = get_data_or_default(form.data, 'player_number', "")
    tags = get_data_list_or_default(form.data.getlist, 'tag', [])
    topics = get_data_list_or_default(form.data.getlist, 'topic', [])
    mechanisms = get_data_list_or_default(form.data.getlist, 'mechanism', [])
    q_dict_kwargs = query_dict_kwargs(form, playing_time, player_number)
    q = Game.objects.filter(**q_dict_kwargs) if q_dict_kwargs else Game.objects.all()
    for tag in tags:
        q = q.filter(tag__name__icontains=tag)
    for mechanism in  mechanisms:
        q = q.filter(mechanism__name__icontains=mechanism)
    for topic in topics:
        q = q.filter(topic__name__icontains=topic)
    if playing_time.isnumeric():
        q = q.exclude(by_player=False, max_time__gt=int(playing_time))
        if player_number.isnumeric():
            q = q.exclude(by_player=True, max_time__gt=int(playing_time) / int(player_number))

    title = f"Résultats pour {context['interface'].theme.query_name} avancée"
    context.update({
        'title': title,
        'games': q,
    })
    return render(request, 'ludorecherche/search_result.html', context)


def query_dict_kwargs(form, playing_time, player_number):
    language = get_data_list_or_default(form.data.getlist, 'language', "")
    query_game_playing_mode = get_data_list_or_default(form.data.getlist, 'playing_mode_choice', [])
    difficulty = get_data_list_or_default(form.data.getlist, 'difficulty', [])
    age = get_data_or_default(form.data, 'age', "")
    name = get_data_or_default(form.data, 'name', "").lower()
    designer = get_data_or_default(form.data, 'designer', "").lower()
    artist = get_data_or_default(form.data, 'artist', "").lower()
    publisher = get_data_or_default(form.data, 'publisher', "").lower()
    q_dict_kwargs = {}
    if name:
        q_dict_kwargs['name__icontains'] = name
    if artist:
        q_dict_kwargs['artist__name__icontains'] = artist
    if designer:
        q_dict_kwargs['deisgners__name__icontains'] = designer
    if publisher:
        q_dict_kwargs['publishers__name__icontains'] = publisher
    if player_number.isnumeric():
        q_dict_kwargs['player_max__isnull'] = False
        q_dict_kwargs['player_min__lte'] = player_number
        q_dict_kwargs['player_max__gte'] = player_number
    if age.isnumeric():
        q_dict_kwargs['age__isnull'] = False
        q_dict_kwargs['age__lte'] = age
    if language:
        q_dict_kwargs['language_name__in'] = language
    if query_game_playing_mode:
        q_dict_kwargs['playing__mode__in'] = query_game_playing_mode
    if difficulty:
        q_dict_kwargs['difficulty__name__in'] = difficulty
    if playing_time.isnumeric():
        q_dict_kwargs['max_time__isnull'] = False
        if not player_number.isnumeric():
            q_dict_kwargs['by_player'] = False
    return q_dict_kwargs


def multi_add_on_detail(request, multi_add_on_pk):
    context = base(request)
    multi_add_on = get_object_or_404(MultiAddOn, pk=multi_add_on_pk)
    context = common_detail(multi_add_on, context)
    games = [game for game in multi_add_on.games.all()]
    comments, stock, color = game_type_common_part(
        {'multi_add_on__name__icontains': multi_add_on.name},
        {'multiaddon': multi_add_on_pk},
        multi_add_on.stock,
        multi_add_on.difficulty
    )
    context.update({
        'variable': multi_add_on,
        'color': color,
        'games': games,
        'type': 'multiaddon',
        'comments': comments,
        'stock': stock,
    })
    return render(request, 'ludorecherche/detail.html', context)


def generic_game_list(request, generic_type, generic_pk):
    context = base(request)
    model_name = generic_type.capitalize() if generic_type != 'playingMode' else 'PlayingMode'
    if hasattr(models, model_name):
        model = getattr(models, model_name)
        key = get_object_or_404(model, pk=generic_pk)
        attr_name = generic_type if generic_type != 'playingMode' else 'playing_mode'
        games = Game.objects.filter(**{attr_name: key})
        title = f"Liste des jeux publiés par {key.name}"
        context.update({
            'games': games,
            'title': title,
        })
        return render(request, 'ludorecherche/search_result.html', context)
    return render(request, '404.html', context)


def handler404(request, exception):  # redirect 404 error
    context = base(request)
    return render(request, '404.html', context, status=404)


def handler403(request, exception):  # redirect 404 error
    context = base(request)
    return render(request, '403.html', context, status=403)


def handler500(request):  # redirect 500 error
    context = base(request)
    return render(request, '500.html', context, status=500)


def error_404(request):  # seeing 404 page while debug true
    context = base(request)
    return render(request, '404.html', context)


def error_500(request):  # seeing 500 page while debug true
    context = base(request)
    return render(request, '500.html', context)


def error_403(request):  # seeing 500 page while debug true
    context = base(request)
    return render(request, '403.html', context)
