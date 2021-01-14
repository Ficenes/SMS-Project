from django.shortcuts import render
from .models import Shop
from .forms import ShopQuantityForm


def show_shop(request):
    query_results = Shop.objects.all()
    form = ShopQuantityForm()
    if request.method == 'POST':
        form = ShopQuantityForm(request.POST or None)
        if form.is_valid():
            print(request.POST)
            context = {}
            return render(request, "addedToBasket.html", context)
    context = {
        'form' : form,
        'query_results' : query_results,
    }
    return render(request, "shop.html", context)
