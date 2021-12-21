from django.urls import path, re_path, include
from django.conf import settings
from django.conf.urls.static import static

from . import views




app_name = "ludorecherche"
urlpatterns = [
    path('404/', views.error_404, name='error_404'),  # path for testing 404 page while debug on
    path('500/', views.error_500, name='error_500'),  # path for testing 500 page while debug on
    path('403/', views.error_403, name='error_500'),  # path for testing 403 page while debug on
    path('', views.index, name='index'),  # ludorecherche base page
    path('list_all/', views.list_all, name='list_all'),  # ludorecherche list all page
    re_path(r'^(?P<game_pk>[0-9]+)/$', views.detail, name='detail'),  # view detail of a particular game
    path('lucky/', views.lucky, name='lucky'),  # return detail of a random game
    path('search/', views.search, name='search'),  # handle basic search from nav
    path('search_page/', views.search_page, name='search_page'),  # return andvanced search page
    re_path(r'^add_on_(?P<add_on_pk>[0-9]+)/$', views.add_on_detail, name='add_on_detail'),
    # return detail of an add on page
    path('advanced_search/', views.advanced_search, name="advanced_search"),  # handle advanced search
    re_path(r'^multi_add_on_(?P<multi_add_on_pk>[0-9]+)/$', views.multi_add_on_detail, name='multi_add_on_detail'),
    # return detail of a multi add on page
    re_path(r'^(?P<generic_type>[a-zM]+)_(?P<generic_pk>[0-9]+)/$', views.generic_game_list, name='generic_game_list'),
    # return list of games of type attributes
    path('ludogestion/', include('ludogestion.urls', namespace='ludogestion')),
    # include ludogestion app urls
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
