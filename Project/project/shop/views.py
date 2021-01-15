from django.shortcuts import render
from .models import Shop
from .forms import ShopQuantityForm
from basket.models import Basket


def show_shop(request):
    query_results = Shop.objects.all()
    form = ShopQuantityForm()
    if request.method == 'POST':
        form = ShopQuantityForm(request.POST or None)
        if form.is_valid():
            print(request.POST)
            Basket.objects.create(
                pic = request.POST['form_pic'],
                sku = request.POST['form_sku'],
                product_description = request.POST['form_product_description'],
                quantity = request.POST['quantity'],
                price = request.POST['form_price'],
                value = request.POST['form_value'],
            )
            context = {}
            return render(request, "addedToBasket.html", context)
    context = {
        'form' : form,
        'query_results' : query_results,
    }
    return render(request, "shop.html", context)
