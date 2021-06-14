# Generated by Django 3.1.7 on 2021-06-14 14:52

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('ludoaccueil', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=200, null=True, verbose_name='titre')),
                ('text_content', models.TextField(blank=True, null=True, verbose_name='commentaire')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='date de création')),
                ('add_on', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludorecherche.addon', verbose_name='extension')),
                ('author', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL, verbose_name='auteur')),
                ('game', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludorecherche.game', verbose_name='jeu')),
                ('multi_add_on', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludorecherche.multiaddon', verbose_name='extension partagée')),
                ('news', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludoaccueil.news', verbose_name='nouvelles')),
            ],
            options={
                'verbose_name': 'commentaire',
            },
        ),
    ]