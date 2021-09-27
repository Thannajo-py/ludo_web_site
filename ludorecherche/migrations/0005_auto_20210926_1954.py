# Generated by Django 3.1.7 on 2021-09-26 17:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ludorecherche', '0004_auto_20210926_1939'),
    ]

    operations = [
        migrations.CreateModel(
            name='DeletedGames',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('deleted_id', models.IntegerField(verbose_name='id supprimé')),
                ('product_type', models.CharField(max_length=50, verbose_name='type')),
            ],
        ),
        migrations.AlterField(
            model_name='addon',
            name='modified_at',
            field=models.FloatField(default=1632678840.6121566, verbose_name='Dernière modification'),
        ),
        migrations.AlterField(
            model_name='game',
            name='modified_at',
            field=models.FloatField(default=1632678840.6121566, verbose_name='Dernière modification'),
        ),
        migrations.AlterField(
            model_name='multiaddon',
            name='modified_at',
            field=models.FloatField(default=1632678840.6121566, verbose_name='Dernière modification'),
        ),
    ]
