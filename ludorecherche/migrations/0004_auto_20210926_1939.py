# Generated by Django 3.1.7 on 2021-09-26 17:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0003_auto_20210729_2208'),
    ]

    operations = [
        migrations.AddField(
            model_name='addon',
            name='modified_at',
            field=models.FloatField(default=1632677956.2447073, verbose_name='Dernière modification'),
        ),
        migrations.AddField(
            model_name='game',
            name='modified_at',
            field=models.FloatField(default=1632677956.2447073, verbose_name='Dernière modification'),
        ),
        migrations.AddField(
            model_name='multiaddon',
            name='modified_at',
            field=models.FloatField(default=1632677956.2447073, verbose_name='Dernière modification'),
        ),
    ]
