from django import forms
from ludorecherche.models import Difficulty, Designer, Artist, Publisher, PlayingMode, Language, Tag, Mechanism, Topic, Game


def list_ordered(entry):
    return sorted([(element, element) for element in entry.objects.all()])


DIFFICULTY_CHOICE = list_ordered(Difficulty)
DESIGNERS = list_ordered(Designer)
ARTISTS = list_ordered(Artist)
PUBLISHERS = list_ordered(Publisher)
TYPE_CHOICE = [("Jeu", "Jeu"), ("Extension simple", "Extension simple"), ("Extension multiples", "Extension multiples")]
PLAYING_MODE_CHOICES = list_ordered(PlayingMode)
LANGUAGES_CHOICES = list_ordered(Language)
DIFFICULTY_CHOICES = list_ordered(Difficulty)
TAG_CHOICES = list_ordered(Tag)
MECHANISM_CHOICES = list_ordered(Mechanism)
TOPIC_CHOICES = list_ordered(Topic)
GAME_CHOICES = list_ordered(Game)


class LogInForm(forms.Form):  # the log in form
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))


class AddAGameForm(forms.Form):  # add a game
    name = forms.CharField(label="nom", widget=forms.TextInput(), required=False)#
    english_name = forms.CharField(widget=forms.TextInput(), required=False)#
    designer = forms.MultipleChoiceField(choices=DESIGNERS, required=False)
    add_designer = forms.CharField(widget=forms.TextInput(), required=False)
    artist = forms.MultipleChoiceField(choices=ARTISTS, required=False)
    add_artist = forms.CharField(widget=forms.TextInput(), required=False)
    publisher = forms.MultipleChoiceField(choices=PUBLISHERS, required=False)
    add_publisher = forms.CharField(widget=forms.TextInput(), required=False)
    playing_time = forms.CharField(widget=forms.TextInput(), required=False)
    player_min = forms.IntegerField(widget=forms.NumberInput(), required=False)#
    player_max = forms.IntegerField(widget=forms.NumberInput(), required=False)#
    age = forms.IntegerField(widget=forms.NumberInput(), required=False)#
    language = forms.MultipleChoiceField(choices=LANGUAGES_CHOICES, required=False)
    add_language = forms.CharField(widget=forms.TextInput(), required=False)
    playing_mode = forms.MultipleChoiceField(choices=PLAYING_MODE_CHOICES, required=False)
    add_playing_mode = forms.CharField(widget=forms.TextInput(), required=False)
    difficulty = forms.ChoiceField(widget=forms.Select(), choices=DIFFICULTY_CHOICES, required=False)
    tag = forms.MultipleChoiceField(choices=TAG_CHOICES, required=False)
    add_tag = forms.CharField(widget=forms.TextInput(), required=False)
    mechanism = forms.MultipleChoiceField(choices=MECHANISM_CHOICES, required=False)
    add_mechanism = forms.CharField(widget=forms.TextInput(), required=False)
    topic = forms.MultipleChoiceField(choices=TOPIC_CHOICES, required=False)
    add_topic = forms.CharField(widget=forms.TextInput(), required=False)
    picture = forms.CharField(widget=forms.TextInput(), required=False)#
    external_image = forms.CharField(widget=forms.TextInput(), required=False)#
    external_thumb_image = forms.CharField(widget=forms.TextInput(), required=False)#
    bgg_link = forms.CharField(widget=forms.TextInput(), required=False)#
    buying_price = forms.IntegerField(widget=forms.NumberInput(), required=False)
    stock = forms.IntegerField(widget=forms.NumberInput(), required=False)
    max_time = forms.IntegerField(widget=forms.NumberInput(), required=False)#
    by_player = forms.BooleanField(required=False)
    type = forms.ChoiceField(widget=forms.Select(), choices=TYPE_CHOICE, required=False)
    associated_game = forms.ChoiceField(widget=forms.Select(), choices=GAME_CHOICES, required=False)
