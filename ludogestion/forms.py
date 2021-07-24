from django import forms
from ludorecherche.models import Difficulty, Designer, Artist, Publisher, PlayingMode, Language, Tag, Mechanism, Topic


DIFFICULTY_CHOICE = [(index, difficulty) for (index, difficulty) in enumerate(Difficulty.objects.all())]
DESIGNERS = [(index, designer) for (index, designer) in enumerate(Designer.objects.all())]
ARTISTS = [(index, artist) for (index, artist) in enumerate(Artist.objects.all())]
PUBLISHERS = [(index, publisher) for (index, publisher) in enumerate(Publisher.objects.all())]
EXTENSION_CHOICE = [(1, "Extension simple"), (2, "Extension multiples")]
PLAYING_MODE_CHOICES = [(playing_mode.name, playing_mode.name) for playing_mode in PlayingMode.objects.all()]
LANGUAGES_CHOICES = [(language.name, language.name) for language in Language.objects.all()]
DIFFICULTY_CHOICES = [(difficulty.name, difficulty.name) for difficulty in Difficulty.objects.all()]
TAG_CHOICES = [(tag.name, tag.name) for tag in Tag.objects.all()]
MECHANISM_CHOICES = [(mechanism.name, mechanism.name) for mechanism in Mechanism.objects.all()]
TOPIC_CHOICES = [(topic.name, topic.name) for topic in Topic.objects.all()]


class LogInForm(forms.Form):  # the log in form
    name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))


class AddAGameForm(forms.Form):  # add a game
    name = forms.CharField(label="nom", widget=forms.TextInput())
    english_name = forms.CharField(widget=forms.TextInput())
    designers = forms.MultipleChoiceField(choices=DESIGNERS)
    artists = forms.MultipleChoiceField(choices=ARTISTS)
    publishers = forms.MultipleChoiceField(choices=PUBLISHERS)
    playing_time = forms.CharField(widget=forms.TextInput())
    player_min = forms.IntegerField(widget=forms.NumberInput())
    player_max = forms.IntegerField(widget=forms.NumberInput())
    age = forms.IntegerField(widget=forms.NumberInput())
    language = forms.MultipleChoiceField(choices=LANGUAGES_CHOICES)
    playing_mode = forms.MultipleChoiceField(choices=PLAYING_MODE_CHOICES)
    difficulty = forms.ChoiceField(widget=forms.Select(), choices=DIFFICULTY_CHOICES)
    tag = forms.MultipleChoiceField(choices=TAG_CHOICES)
    mechanism = forms.MultipleChoiceField(choices=MECHANISM_CHOICES)
    topic = forms.MultipleChoiceField(choices=TOPIC_CHOICES)
    picture = forms.CharField(widget=forms.TextInput())
    external_image = forms.CharField(widget=forms.TextInput())
    external_thumb_image = forms.CharField(widget=forms.TextInput())
    bgg_link = forms.CharField(widget=forms.TextInput())
    buying_price = forms.IntegerField(widget=forms.NumberInput())
    stock = forms.IntegerField(widget=forms.NumberInput())
    max_time = forms.IntegerField(widget=forms.NumberInput())
    by_player = forms.BooleanField()
    extension_type = forms.ChoiceField(widget=forms.Select(), choices=EXTENSION_CHOICE)
