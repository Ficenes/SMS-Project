from django.shortcuts import render, HttpResponseRedirect
from .models import Shop, Basket
from .forms import ShopQuantityForm


def show_shop(request):
    query_results = Shop.objects.all()
    form = ShopQuantityForm(request.POST or None)
    if form.is_valid():
        form.save()
    context = {
        'form' : form,
        'query_results' : query_results,
    }
    return render(request, "shop.html", context)
