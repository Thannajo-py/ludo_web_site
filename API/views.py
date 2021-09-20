from django.shortcuts import render
from django.contrib.auth import authenticate
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction

from rest_framework.response import Response
from rest_framework.decorators import api_view

from ludorecherche.models import Game, AddOn, MultiAddOn, Designer, Artist, Publisher, Language, PlayingMode, Difficulty,\
Tag, Mechanism, Topic

import json


def make_sub_dic(game, subDic):
    this_dic = {
                'id': game.pk,
                'name': game.name,
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
def get_all(request):
    if request.method == 'GET':
        games = [game for game in Game.objects.order_by('name')]
        multi_add_ons = [add_on for add_on in MultiAddOn.objects.order_by('name')]
        add_ons = [add_on for add_on in AddOn.objects.order_by('name')]
        dic_all = {'games': [
            make_sub_dic(game, {
             'by_player': game.by_player,
             'tags': [tag.name for tag in game.tag.order_by('name')],
             'topics': [topic.name for topic in game.topic.order_by('name')],
             'mechanism': [mechanism.name for mechanism in game.mechanism.order_by('name')],
             'add_on':
                 [make_sub_dic(add_on, {
                   'game': add_on.game.name
                   }) for add_on in AddOn.objects.filter(game_id=game.pk)],
             'multi_add_on': [make_sub_dic(multi_add_on, {
                               'games': [source_game.name for source_game in multi_add_on.games.order_by('name')],
                               }) for multi_add_on in MultiAddOn.objects.filter(games=game.pk)]
             }) for game in games],
        'multi_add_ons':[make_sub_dic(add_on, {
                   'games': [game.name for game in add_on.games.order_by('name')]
                   }) for add_on in multi_add_ons],
            'add_ons':[make_sub_dic(add_on, {'game': add_on.game.name}) for add_on in add_ons if add_on.game is not None]
        }
        return Response(dic_all)
def game_type(): return 'game'
def add_on_type(): return 'add_on'
def multi_add_on_type(): return 'multi_add_on'

def get_int(content):
    return content if type(content) == int else None

def common_field_fill(db_class, added_content, field, type_object):
    if (added_content):
        games = added_content.get(field)
        if type(games) == list:
            for game in games:
                try:
                    db_class.objects.get(name=game.get('name'))
                    continue
                except ObjectDoesNotExist:
                    new_game = db_class.objects.create(
                        name=game.get("name", ""),
                        english_name=game.get("english_name", ""),
                        player_min=get_int(game.get('player_min')),
                        player_max=get_int(game.get('player_max')),
                        playing_time=game.get('playing_time'),
                        bgg_link=game.get('bgg_link', None),
                        age=get_int(game.get('age')),
                        max_time=get_int(game.get('max_playtime')),
                        stock=get_int(game.get('stock', None)),
                        buying_price=get_int(game.get('buying_price', None))
                    )
                    fill_link(game.get('designers'), Designer, new_game.designers)
                    fill_link(game.get('artists'), Artist, new_game.artists)
                    fill_link(game.get('publishers'), Publisher, new_game.publishers)
                    fill_link(game.get('language'), Language, new_game.language)
                    fill_link(game.get('playing_mode'), PlayingMode, new_game.playing_mode)
                    if game.difficulty:
                        try:
                            new_game.difficulty = Difficulty.objects.get(name=game.get('difficulty'))
                        except ObjectDoesNotExist:
                            new_game.difficulty = Difficulty.objects.create(name=game.get('difficulty'))
                    if type_object == game_type():
                        new_game.by_player = game.get('by_player') if type(game.get('by_player') == bool) else False
                        fill_link(game.get('tags'), Tag, new_game.tag)
                        fill_link(game.get('mechanism'), Mechanism, new_game.mechanism)
                        fill_link(game.get('topics'), Topic, new_game.topic)
                    new_game.save()


def fill_link(list_type, db_class_type, db_object):
    if type(list_type) == list:
        for element in list_type:
            try:
                db_element = db_class_type.objects.get(name=element)
                db_object.add(db_element)
            except ObjectDoesNotExist:
                new_element = db_class_type.objects.create(name=element)
                db_object.add(new_element)

def fill_complex_element(list_type, db_class_type, db_object):
    if type(list_type) == list:
        for element in list_type:
            try:
                db_element = db_class_type.objects.get(name=element)
                db_object.add(db_element)
                db_object.save()
            except ObjectDoesNotExist:
                continue


def add_dispatch(added_content):
    common_field_fill(Game, added_content, 'games', game_type())
    common_field_fill(AddOn, added_content, 'add_ons', add_on_type())
    common_field_fill(MultiAddOn, added_content, 'multi_add_ons', multi_add_on_type())
    add_ons = added_content.get('add_ons')
    if type(add_ons) == list:
        for add_on in add_ons:
            db_add_on = AddOn.objects.get(name=add_on.get('name'))
            try:
                db_add_on.game = Game.objects.get(name=add_on.get('game'))
                db_add_on.save()
            except ObjectDoesNotExist:
                pass
    multi_add_ons = added_content.get('multi_add_ons')
    if type(multi_add_ons) == list:
        for multi_add_on in multi_add_ons:
            db_multi_add_on = MultiAddOn.objects.get(name=multi_add_on.get('name'))
            fill_complex_element(multi_add_on.get('games'), Game, db_multi_add_on)






@api_view(['POST'])
@transaction.atomic
def synchronize_change(request):
    if request.method == "POST":
        body = json.loads(request.POST.get('body'))
        print(body)
        username = body.get('login')
        password = body.get('password')
        user = authenticate(request, username=username, password=password)
        if user is not None:
           added_content = body.get('addedList')
           add_dispatch(added_content)
           modified_content = body.get('modifiedList')
           deleted_content = body.get('deletedList')
        raise UnicodeEncodeError



    return Response({})


