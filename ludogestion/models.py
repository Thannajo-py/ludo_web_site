from datetime import date, timedelta


from django.db import models
from django.contrib.auth.models import User


from ludorecherche.models import Game, AddOn, MultiAddOn


class Reservation(models.Model):
    created_at = models.DateTimeField("date de création", auto_now_add=True)
    duration = models.IntegerField("durée", default=15)
    expired_at = models.DateTimeField("date d'expiration")
    game_id = models.ForeignKey(Game, verbose_name="jeu", on_delete=models.CASCADE, blank=True)
    addon_id = models.ForeignKey(AddOn, verbose_name="extension", on_delete=models.CASCADE, blank=True)
    multiaddon_id = models.ForeignKey(MultiAddOn, verbose_name="extension multiple", on_delete=models.CASCADE, blank=True)
    user_id = models.ForeignKey(User, verbose_name="utilisateur", on_delete=models.DO_NOTHING, blank=True, default=None)
