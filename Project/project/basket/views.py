from django.shortcuts import render
from .models import Basket


def show_basket(request):
    query_results = Basket.objects.all()
    context = {
        'query_results' : query_results,
    }
    return render(request, "basket.html", context)