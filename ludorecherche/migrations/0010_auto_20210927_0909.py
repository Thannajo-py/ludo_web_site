# Generated by Django 3.1.7 on 2021-09-27 07:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0009_auto_20210927_0909'),
    ]

    operations = [
        migrations.AlterField(
            model_name='addon',
            name='modified_at',
            field=models.FloatField(default=1632726599.2825015, verbose_name='Dernière modification'),
        ),
        migrations.AlterField(
            model_name='game',
            name='modified_at',
            field=models.FloatField(default=1632726599.2825015, verbose_name='Dernière modification'),
        ),
        migrations.AlterField(
            model_name='multiaddon',
            name='modified_at',
            field=models.FloatField(default=1632726599.2825015, verbose_name='Dernière modification'),
        ),
    ]
