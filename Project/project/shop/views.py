from django.shortcuts import render
from .models import Shop
from .forms import ShopQuantityForm
from basket.models import Basket


def show_shop(request):
    query_results = Shop.objects.all()
    n_objects = Basket.objects.all().count()
    form = ShopQuantityForm()
    error = ''
    if request.method == 'POST':
        form = ShopQuantityForm(request.POST or None)
        if form.is_valid():
            Basket.objects.create(
                pic = request.POST['form_pic'],
                sku = request.POST['form_sku'],
                product_description = request.POST['form_product_description'],
                quantity = request.POST['quantity'],
                price = request.POST['form_price'],
                value = float(request.POST['form_price']) * float(request.POST['quantity']),
            )
            context = {}
            return render(request, "addedToBasket.html", context)
        else:
            error = 'Hello'
            form = ShopQuantityForm()
    context = {
        'form' : form,
        'query_results' : query_results,
        'error' : error,
        'n_objects' : n_objects,
    }
    return render(request, "shop.html", context)
