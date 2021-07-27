from django import forms
from ludorecherche.models import Difficulty, Designer, Artist, Publisher, PlayingMode, Language, Tag, Mechanism, Topic


def list_ordered(entry):
    return sorted([(element, element) for element in entry.objects.all()])


DIFFICULTY_CHOICE = list_ordered(Difficulty)
DESIGNERS = list_ordered(Designer)
ARTISTS = list_ordered(Artist)
PUBLISHERS = list_ordered(Publisher)
TYPE_CHOICE = [("Extension simple", "Extension simple"), ("Extension multiples", "Extension multiples")]
PLAYING_MODE_CHOICES = list_ordered(PlayingMode)
LANGUAGES_CHOICES = list_ordered(Language)
DIFFICULTY_CHOICES = list_ordered(Difficulty)
TAG_CHOICES = list_ordered(Tag)
MECHANISM_CHOICES = list_ordered(Mechanism)
TOPIC_CHOICES = list_ordered(Topic)


class LogInForm(forms.Form):  # the log in form
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))


class AddAGameForm(forms.Form):  # add a game
    name = forms.CharField(label="nom", widget=forms.TextInput())
    english_name = forms.CharField(widget=forms.TextInput())
    designers = forms.MultipleChoiceField(choices=DESIGNERS)
    add_designer = forms.CharField(widget=forms.TextInput())
    artists = forms.MultipleChoiceField(choices=ARTISTS)
    add_artist = forms.CharField(widget=forms.TextInput())
    publishers = forms.MultipleChoiceField(choices=PUBLISHERS)
    add_publisher = forms.CharField(widget=forms.TextInput())
    playing_time = forms.CharField(widget=forms.TextInput())
    player_min = forms.IntegerField(widget=forms.NumberInput())
    player_max = forms.IntegerField(widget=forms.NumberInput())
    age = forms.IntegerField(widget=forms.NumberInput())
    language = forms.MultipleChoiceField(choices=LANGUAGES_CHOICES)
    add_language = forms.CharField(widget=forms.TextInput())
    playing_mode = forms.MultipleChoiceField(choices=PLAYING_MODE_CHOICES)
    difficulty = forms.ChoiceField(widget=forms.Select(), choices=DIFFICULTY_CHOICES)
    tag = forms.MultipleChoiceField(choices=TAG_CHOICES)
    add_tag = forms.CharField(widget=forms.TextInput())
    mechanism = forms.MultipleChoiceField(choices=MECHANISM_CHOICES)
    add_mechanism = forms.CharField(widget=forms.TextInput())
    topic = forms.MultipleChoiceField(choices=TOPIC_CHOICES)
    add_topic = forms.CharField(widget=forms.TextInput())
    picture = forms.CharField(widget=forms.TextInput())
    external_image = forms.CharField(widget=forms.TextInput())
    external_thumb_image = forms.CharField(widget=forms.TextInput())
    bgg_link = forms.CharField(widget=forms.TextInput())
    buying_price = forms.IntegerField(widget=forms.NumberInput())
    stock = forms.IntegerField(widget=forms.NumberInput())
    max_time = forms.IntegerField(widget=forms.NumberInput())
    by_player = forms.BooleanField()
    extension_type = forms.ChoiceField(widget=forms.Select(), choices=TYPE_CHOICE)
