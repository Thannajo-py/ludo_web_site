# Generated by Django 3.1.7 on 2021-07-22 16:19

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
            name='ReservationRule',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('duration', models.IntegerField(default=15, verbose_name='durée')),
                ('max_number', models.IntegerField(default=3, verbose_name='nombre max')),
            ],
        ),
        migrations.CreateModel(
            name='Reservation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='date de création')),
                ('expired_at', models.DateTimeField(blank=True, null=True, verbose_name="date d'expiration")),
                ('addon', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludorecherche.addon', verbose_name='extension')),
                ('game', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludorecherche.game', verbose_name='jeu')),
                ('multiaddon', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludorecherche.multiaddon', verbose_name='extension multiple')),
                ('reservation', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='ludogestion.reservationrule', verbose_name='reservation')),
                ('user_id', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL, verbose_name='utilisateur')),
            ],
        ),
    ]
