# Generated by Django 3.1.7 on 2021-06-14 14:52

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('ludorecherche', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=200, null=True, unique=True, verbose_name='titre')),
                ('internal_img_url', models.CharField(blank=True, max_length=200, null=True, verbose_name="url d'image locale")),
                ('external_img_url', models.CharField(blank=True, max_length=200, null=True, verbose_name="url d'image externe")),
                ('internal_video_url', models.CharField(blank=True, max_length=200, null=True, verbose_name='url de vidéo interne')),
                ('internal_video_codec', models.CharField(blank=True, max_length=10, null=True, verbose_name='codec de vidéo interne')),
                ('external_video_url', models.TextField(blank=True, null=True, verbose_name='url de vidéo externe')),
                ('audio_url', models.CharField(blank=True, max_length=200, null=True, verbose_name="url de l'audio")),
                ('audio_codec', models.CharField(blank=True, max_length=200, null=True, verbose_name='codec audio')),
                ('content', models.TextField(blank=True, null=True, verbose_name="contenu de l'article")),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='date de création')),
            ],
            options={
                'verbose_name': 'article',
                'verbose_name_plural': 'articles',
            },
        ),
    ]
