from django.urls import path
from . import views

urlpatterns = [
    path('', views.my_model_list, name='my-model-list'),
]
