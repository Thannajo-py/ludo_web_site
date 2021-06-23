from django.contrib import admin
from .models import Reservation


@admin.register(Reservation)
# decorator giving admin right to change create and modify target
class GameAdmin(admin.ModelAdmin):
    search_fields = ['created_at', 'expired_at']
    list_display = ['created_at', 'expired_at', 'user_id']
    ordering = ['created_at']

