from django.shortcuts import render
from django.http import HttpResponse


def entry_welcome(request):
    context = {}
    return render(request, "home.html", context)