# Generated by Django 3.1.7 on 2021-07-29 19:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='addon',
            name='bgg_link',
            field=models.TextField(blank=True, null=True, verbose_name='URL de BGG ou Tric Trac '),
        ),
        migrations.AlterField(
            model_name='addon',
            name='english_name',
            field=models.CharField(blank=True, max_length=200, null=True, verbose_name='nom anglais'),
        ),
        migrations.AlterField(
            model_name='game',
            name='bgg_link',
            field=models.TextField(blank=True, null=True, verbose_name='URL de BGG ou Tric Trac '),
        ),
        migrations.AlterField(
            model_name='game',
            name='english_name',
            field=models.CharField(blank=True, max_length=200, null=True, verbose_name='nom anglais'),
        ),
        migrations.AlterField(
            model_name='multiaddon',
            name='bgg_link',
            field=models.TextField(blank=True, null=True, verbose_name='URL de BGG ou Tric Trac '),
        ),
        migrations.AlterField(
            model_name='multiaddon',
            name='english_name',
            field=models.CharField(blank=True, max_length=200, null=True, verbose_name='nom anglais'),
        ),
    ]
