import json
import time
import os


from django.contrib.auth import authenticate
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction

from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.exceptions import AuthenticationFailed


from ludorecherche.models import Game, AddOn, MultiAddOn, Designer, Artist, Publisher, Language, PlayingMode, \
    Difficulty, Tag, Mechanism, Topic, DeletedGames
from .constant import game_type, add_on_type, multi_add_on_type


def make_sub_dic(game, sub_dic):
    """handle Game, AddOn, MultiAddOn common field dict"""
    this_dic = {
                'id': game.pk,
                'name': game.name,
                'english_name': game.english_name,
                'player_min': game.player_min,
                'player_max': game.player_max,
                'playing_time': game.playing_time,
                'difficulty': game.difficulty.name if game.difficulty else None,
                'designer': [designer.name for designer in game.designers.order_by('name')],
                'artist': [artist.name for artist in game.artists.order_by('name')],
                'publisher': [publisher.name for publisher in game.publishers.order_by('name')],
                'bgg_link': game.bgg_link,
                'playingMod': [playing_mode.name for playing_mode in game.playing_mode.order_by('name')],
                'language': [language.name for language in game.language.order_by('name')],
                'age': game.age,
                'buying_price': game.buying_price,
                'stock': game.stock,
                'max_time': game.max_time,
                'external_img': game.external_image,
                'picture': game.picture
                   }
    this_dic.update(sub_dic)
    return this_dic


def get_all(timestamp, new_timestamp):
    """Send the whole database in a JSON format"""
    games = [game for game in Game.objects.order_by('name')]
    multi_add_ons = [add_on for add_on in MultiAddOn.objects.order_by('name')]
    add_ons = [add_on for add_on in AddOn.objects.order_by('name')]
    dic_all = {'games': [
        make_sub_dic(game, {
         'by_player': game.by_player,
         'tag': [tag.name for tag in game.tag.order_by('name')],
         'topic': [topic.name for topic in game.topic.order_by('name')],
         'mechanism': [mechanism.name for mechanism in game.mechanism.order_by('name')],
         'add_on': [add_on.name for add_on in AddOn.objects.filter(game_id=game.pk)],
         'multi_add_on': [multi_add_on.name for multi_add_on in MultiAddOn.objects.filter(games=game.pk)]
         }) for game in games],
        'multi_add_ons': [make_sub_dic(add_on, {
               'game': [game.name for game in add_on.games.order_by('name')]
               }) for add_on in multi_add_ons],
        'add_ons': [make_sub_dic(add_on, {'game': add_on.game.name}) for add_on in add_ons if add_on.game is not None],
        'timestamp': new_timestamp
    }
    return dic_all


def get_last_change(timestamp, new_timestamp):
    """send only changed created or deleted element since timestamp"""
    games = [game for game in Game.objects.filter(modified_at__gte=timestamp).order_by('name')]
    multi_add_ons = [add_on for add_on in MultiAddOn.objects.filter(modified_at__gt=timestamp).order_by('name')]
    add_ons = [add_on for add_on in AddOn.objects.filter(modified_at__gt=timestamp).order_by('name')]
    deleted_games = [
        game for game in DeletedGames.objects.filter(
            created_at__gt=timestamp,
            product_type=game_type()
        )
    ]
    deleted_add_ons = [
        add_on for add_on in DeletedGames.objects.filter(
            created_at__gt=timestamp,
            product_type=add_on_type()
        )
    ]
    deleted_multi_add_ons = [
        multi_add_on for multi_add_on in DeletedGames.objects.filter(
        created_at__gt=timestamp,
        product_type=multi_add_on_type()
        )
    ]
    dic_all = {'games': [
        make_sub_dic(
            game,
            {
             'by_player': game.by_player,
             'tag': [tag.name for tag in game.tag.order_by('name')],
             'topic': [topic.name for topic in game.topic.order_by('name')],
             'mechanism': [mechanism.name for mechanism in game.mechanism.order_by('name')],
             'add_on': [add_on.name for add_on in AddOn.objects.filter(game_id=game.pk)],
             'multi_add_on': [
                 multi_add_on.name for multi_add_on in MultiAddOn.objects.filter(games=game.pk)]
             }
        ) for game in games],
        'multi_add_ons': [
            make_sub_dic(
                add_on,
                {
               'games': [game.name for game in add_on.games.order_by('name')]
               }
            ) for add_on in multi_add_ons
        ],
        'add_ons': [
            make_sub_dic(
                add_on,
                {'game': add_on.game.name}
            ) for add_on in add_ons if add_on.game is not None
        ],
        'deleted_games': [game.deleted_id for game in deleted_games],
        'deleted_add_ons': [game.deleted_id for game in deleted_add_ons],
        'deleted_multi_add_ons': [game.deleted_id for game in deleted_multi_add_ons],
        'timestamp': new_timestamp
    }
    return dic_all


def get_int(content):
    """return an int or none from a data"""
    return content if type(content) == int else None


def common_field_fill(db_class, added_content, field, type_object):
    """make common simple change for Game AddOn MultiAddOn"""
    if added_content:
        games = added_content.get(field)
        if type(games) == list:
            for game in games:
                try:
                    db_class.objects.get(name=game.get('name', "").strip())
                    continue
                except ObjectDoesNotExist:
                    new_game = db_class.objects.create(
                        name=game.get("name", "").strip(),
                        english_name=game.get("english_name", "").strip(),
                        player_min=get_int(game.get('player_min')),
                        player_max=get_int(game.get('player_max')),
                        playing_time=game.get('playing_time', "").strip(),
                        bgg_link=game.get('bgg_link', "").strip(),
                        age=get_int(game.get('age')),
                        max_time=get_int(game.get('max_playtime')),
                        stock=get_int(game.get('stock', 1)),
                        external_image=game.get('external_img', "").strip(),
                        buying_price=get_int(game.get('buying_price')),
                    )
                    common_object_fill(game, new_game, type_object)
                    new_game.save()


def common_object_fill(game, new_game, type_object):
    """make common change with link type"""
    fill_link(game.get('designer'), Designer, new_game.designers)
    fill_link(game.get('artist'), Artist, new_game.artists)
    fill_link(game.get('publisher'), Publisher, new_game.publishers)
    fill_link(game.get('language'), Language, new_game.language)
    fill_link(game.get('playing_mode'), PlayingMode, new_game.playing_mode)
    if game.get('difficulty'):
        try:
            new_game.difficulty = Difficulty.objects.get(name=game.get('difficulty', "").strip())
        except ObjectDoesNotExist:
            new_game.difficulty = Difficulty.objects.create(name=game.get('difficulty', "").strip())
    if type_object == game_type():
        new_game.by_player = game.get('by_player') if type(game.get('by_player') == bool) else False
        fill_link(game.get('tag'), Tag, new_game.tag)
        fill_link(game.get('mechanism'), Mechanism, new_game.mechanism)
        fill_link(game.get('topic'), Topic, new_game.topic)
        new_game.save()


def late_common_object_fill(content):
    """handle linking after changed have been made"""
    add_ons = content.get('add_ons')
    if type(add_ons) == list:
        for add_on in add_ons:
            db_add_on = AddOn.objects.get(name=add_on.get('name', "").strip())
            try:
                db_add_on.game = Game.objects.get(name=add_on.get('game', "").strip())
                db_add_on.save()
            except ObjectDoesNotExist:
                pass
    multi_add_ons = content.get('multi_add_ons')
    if type(multi_add_ons) == list:
        for multi_add_on in multi_add_ons:
            db_multi_add_on = MultiAddOn.objects.get(name=multi_add_on.get('name', "").strip())
            fill_complex_element(multi_add_on.get('games'), Game, db_multi_add_on)


def fill_link(list_type, db_class_type, db_object):
    """handle many-to-many relationship create element if not present"""
    if type(list_type) == list:
        db_object.clear()
        for element in list_type:
            try:
                db_element = db_class_type.objects.get(name=element.strip())
                db_object.add(db_element)
            except ObjectDoesNotExist:
                new_element = db_class_type.objects.create(name=element.strip())
                db_object.add(new_element)


def fill_complex_element(list_type, db_class_type, db_object):
    """handle Game MultiAddOn many to many relationship"""
    if type(list_type) == list:
        db_object.clear()
        for element in list_type:
            try:
                db_element = db_class_type.objects.get(name=element)
                db_object.add(db_element)
                db_object.save()
            except ObjectDoesNotExist:
                continue


def add_dispatch(added_content):
    """handle add request"""
    common_field_fill(Game, added_content, 'games', game_type())
    common_field_fill(AddOn, added_content, 'add_ons', add_on_type())
    common_field_fill(MultiAddOn, added_content, 'multi_add_ons', multi_add_on_type())


def common_field_change(db_object, new_object: dict, type_object):
    """handle game add-on multi-add-on common field change"""
    db_object.name = new_object.get('name')
    db_object.english_name = new_object.get('english_name')
    db_object.player_min = get_int(new_object.get('player_min'))
    db_object.player_max = get_int(new_object.get('player_max'))
    db_object.playing_time = new_object.get('playing_time')
    db_object.bgg_link = new_object.get('bgg_link')
    db_object.age = new_object.get('age')
    db_object.buying_price = get_int(new_object.get('buying_price'))
    db_object.stock = get_int(new_object.get('stock', 1))
    db_object.max_time = get_int(new_object.get('max_time'))
    db_object.external_image = new_object.get('external_img')
    common_object_fill(new_object, db_object, type_object)


def list_object_from_dict(list_object, db_class, type_object):
    """check if object exist and new name is available(unique name db constraint)"""
    if type(list_object) == list:
        for data_object in list_object:
            if type(data_object) == dict:
                try:
                    db_data = db_class.objects.get(pk=data_object.get('id'))
                    try:
                        db_destination = db_class.objects.get(name=data_object.get('name', "").strip())
                        if db_destination.pk == db_data.pk:
                            common_field_change(db_data, data_object, type_object)
                    except ObjectDoesNotExist:
                        common_field_change(db_data, data_object, type_object)
                except ObjectDoesNotExist:
                    continue


def modify_dispatch(modified_content: dict):
    """handle modification request"""
    list_object_from_dict(modified_content.get('games'), Game, game_type())
    list_object_from_dict(modified_content.get('add_ons'), AddOn, add_on_type())
    list_object_from_dict(modified_content.get('multi_add_ons'), MultiAddOn, multi_add_on_type())


def delete_from_db(list_object, db_class):
    """Delete object from database"""
    if type(list_object) == list:
        for data in list_object:
            if type(data) == dict:
                try:
                    db_data = db_class.objects.get(pk=data.get('id'))
                    db_data.delete()
                except ObjectDoesNotExist:
                    continue


def delete_dispatch(deleted_content: dict):
    """Handle deletion request"""
    delete_from_db(deleted_content.get('games'), Game)
    delete_from_db(deleted_content.get('add_ons'), AddOn)
    delete_from_db(deleted_content.get('multi_add_ons'), MultiAddOn)


def django_authentify(request, body):
    """check if request credentials are correct and return the user"""
    username = decrypt(body.get('login'))
    password = decrypt(body.get('password'))
    return authenticate(request, username=username, password=password)


def decrypt(int_list):
    if type(int_list) != list:
        return None
    secret_key = os.environ['fil_rouge_secret_crypto_key']
    result = ""
    for i in range(len(int_list)):
        if type(int_list[i]) == int:
            result += chr(int_list[i] - ord(secret_key[i % len(secret_key)]))
        else:
            return None
    return result


def modify_db(body):
    """modify the database with a request body"""
    deleted_content = body.get('deletedList')
    if type(deleted_content) == dict:
        delete_dispatch(deleted_content)

    modified_content = body.get('modifiedList')
    if type(modified_content) == dict:
        modify_dispatch(modified_content)

    added_content = body.get('addedList')
    if type(added_content) == dict:
        add_dispatch(added_content)
        late_common_object_fill(added_content)

    if type(modified_content) == dict:
        late_common_object_fill(modified_content)


@api_view(['POST'])
@transaction.atomic
def synchronize_change(request):
    """With a POST request check user identification, permission and request body format then make change to database
    and send back a JSON response with the new update(based on timestamp)"""
    if request.method == "POST":
        body_response = json.loads(request.body)
        if type(body_response) == dict:
            body = body_response.get('body')
            user = django_authentify(request, body)
            if user is not None:
                if user.has_perm('ludorecherche.add_Game') and \
                        user.has_perm('ludorecherche.change_Game') and \
                        user.has_perm('ludorecherche.delete_Game'):
                    modify_db(body)
                new_timestamp = time.time()
                if body.get('timestamp') is None:
                    return Response(get_all(0.0, new_timestamp))
                else:
                    return Response(get_last_change(body.get('timestamp'), new_timestamp))
            else:
                raise AuthenticationFailed
