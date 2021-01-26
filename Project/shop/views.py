from django.shortcuts import render
from .models import Shop
from .forms import ShopQuantityForm
from basket.models import Basket
from django.contrib.auth.decorators import login_required


@login_required(login_url = '/login')
def show_shop(request):
    '''Function shows available goods for purchase which then are going to be added to the Basket'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
    query_results = Shop.objects.all()
    n_objects = Basket.objects.all().count()
    form = ShopQuantityForm()
    if request.method == 'POST':
        form = ShopQuantityForm(request.POST or None)
        if form.is_valid():
            in_basket = request.POST['form_sku']
            req_quantity = float(request.POST['quantity'])
            req_value = float(request.POST['form_price']) * float(request.POST['quantity'])
            if Basket.objects.filter(sku=in_basket).count() != 0:
                Basket.objects.filter(sku=in_basket).update(
                    quantity = req_quantity + float(Basket.objects.filter(sku=in_basket)[0].quantity),
                    value = req_value + float(Basket.objects.filter(sku=in_basket)[0].value),
                    )
            else:
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
            form = ShopQuantityForm()
            context = {}
            return render(request, "error.html", context)
    context = {
        'logged_in' : logged_in,
        'form' : form,
        'query_results' : query_results,
        'n_objects' : n_objects,
    }
    return render(request, "shop.html", context)
