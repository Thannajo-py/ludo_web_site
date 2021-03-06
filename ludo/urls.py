"""ludo URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

from ludorecherche import views
from ludoaccueil import views as view


handler404 = views.handler404  # to make custom 404 page
handler500 = views.handler500  # to make custom 500 page
handler403 = views.handler403  # to make custom 403 page


urlpatterns = [
    path('gm/', admin.site.urls),  # admin url adress
    path('ludorecherche/', include('ludorecherche.urls', namespace='ludorecherche')),  # url search include app url
    path('ludogestion/', include('ludogestion.urls', namespace='ludogestion')),  # url search include app url
    path('ludoaccueil/', include('ludoaccueil.urls', namespace='ludoaccueil')),  # url search include app url
    path('api/', include('API.urls', namespace='api')),  # url search include app url
    path('', view.accueil, name='accueil'),  # handle the presentation page with ludoaccueil app

] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
