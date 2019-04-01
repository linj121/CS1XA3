from django.urls import path
from . import views

urlpatterns = [
    path('', views.todo , name='todoapp-todo'),
]
