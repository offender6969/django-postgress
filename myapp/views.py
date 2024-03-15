from django.shortcuts import render
from .models import MyModel

def my_model_list(request):
    my_models = MyModel.objects.all()
    return render(request, 'myapp/my_model_list.html', {'my_models': my_models})
