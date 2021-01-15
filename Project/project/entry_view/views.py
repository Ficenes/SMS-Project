from django.shortcuts import render
from django.http import HttpResponse
from basket.models import Basket


def entry_welcome(request):
    n_objects = Basket.objects.all().count()
    context = {
        'n_objects' : n_objects,
    }
    return render(request, "home.html", context)