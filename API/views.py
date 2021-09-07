
from django.shortcuts import render

from rest_framework.response import Response
from rest_framework.decorators import api_view

from ludorecherche.models import Game, AddOn, MultiAddOn


def make_subDic(game, subDic):
    this_dic = {'name': game.name,
                   'english_name': game.english_name,
                   'player_min': game.player_min,
                   'player_max': game.player_max,
                   'playing_time': game.playing_time,
                   'difficulty': game.difficulty.name if game.difficulty else None,
                   'designers': [designer.name for designer in game.designers.order_by('name')],
                   'artists': [artist.name for artist in game.artists.order_by('name')],
                   'publishers': [publisher.name for publisher in game.publishers.order_by('name')],
                   'bgg_link': game.bgg_link,
                   'playing_mode': [playing_mode.name for playing_mode in game.playing_mode.order_by('name')],
                   'language': [language.name for language in game.language.order_by('name')],
                   'age': game.age,
                   'buying_price': game.buying_price,
                   'stock': game.stock,
                   'max_time': game.max_time,
                   }
    this_dic.update(subDic)
    return this_dic


@api_view(['GET'])
def getAll(request):
    if request.method == 'GET':
        games = [game for game in Game.objects.order_by('name')]
        multi_add_ons = [add_on for add_on in MultiAddOn.objects.order_by('name')]
        add_ons = [add_on for add_on in AddOn.objects.order_by('name')]
        dic_all = {'games': [
            make_subDic(game, {
             'by_player': game.by_player,
             'tags': [tag.name for tag in game.tag.order_by('name')],
             'topics': [topic.name for topic in game.topic.order_by('name')],
             'mechanism': [mechanism.name for mechanism in game.mechanism.order_by('name')],
             'add_on':
                 [make_subDic(add_on, {
                   'game': add_on.game.name
                   }) for add_on in AddOn.objects.filter(game_id=game.pk)],
             'multi_add_on': [make_subDic(multi_add_on,{
                               'games': [source_game.name for source_game in multi_add_on.games.order_by('name')],
                               }) for multi_add_on in MultiAddOn.objects.filter(games=game.pk)]
             }) for game in games],
        'multi_add_ons':[make_subDic(add_on, {
                   'games': [game.name for game in add_on.games.order_by('name')]
                   }) for add_on in multi_add_ons],
            'add_ons':[make_subDic(add_on, {'game': add_on.game.name }) for add_on in add_ons if add_on.game is not None]
        }
        return Response(dic_all)
