from django.shortcuts import render, redirect
from .models import Basket
from invoices.models import Invoices
from django.db.models import Sum
from random import randint


def invoice_generator():
    name = 'INV'
    gen_number = randint(1,1000)
    while gen_number in Invoices.objects.all().values('invoice_number'):
        gen_number = randint(1,1000)
    inv_number = name + str(gen_number)
    return inv_number
    
def show_basket(request):
    query_results = Basket.objects.all()
    n_objects = Basket.objects.all().count()
    quantity_total = Basket.objects.all().aggregate(Sum('quantity'))['quantity__sum']
    value_total = Basket.objects.all().aggregate(Sum('value'))['value__sum']
    if request.method == 'POST':
        if 'form_id' in request.POST:
            to_del = Basket.objects.filter(id = request.POST['form_id'])
            to_del.delete()
            return redirect('/basket/')
        else:
            instance = Basket.objects.all().values()
            gen_invoice = invoice_generator()
            for i in range(0,Basket.objects.all().count()):
                Invoices.objects.create(
                    invoice_number = gen_invoice,
                    sku = instance[i]['sku'],
                    product_description = instance[i]['product_description'],
                    quantity = instance[i]['quantity'],
                    price = instance[i]['price'],
                    value = instance[i]['value'],
                )
            Basket.objects.all().delete()
            return redirect('/basket/')
    context = {
        'query_results' : query_results,
        'n_objects' : n_objects,
        'quantity_total' :  quantity_total,
        'value_total' : value_total
    }
    return render(request, "basket.html", context)