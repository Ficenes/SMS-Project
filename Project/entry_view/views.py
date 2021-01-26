from django.shortcuts import render
from django.http import HttpResponse
from basket.models import Basket


def entry_welcome(request):
    '''Function shows the entry view for the user which is also a base for all other views.
    It contains my contact information and in future a diagrom of models used in the project
    and the way they are connected'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
    n_objects = Basket.objects.all().count()
    context = {
        'n_objects' : n_objects,
        'logged_in': logged_in,
    }
    return render(request, "home.html", context)