from django.shortcuts import render, redirect
from .models import Basket
from invoices.models import Invoice, Invoices
from django.db.models import Sum
from random import randint


def invoice_generator():
    '''This function generates an invoice number'''
    name = 'INV'
    gen_number = randint(1,1000)
    while gen_number in Invoice.objects.all().values('invoice_number'):
        gen_number = randint(1,1000)
    inv_number = name + str(gen_number)
    return inv_number
    
def show_basket(request):
    '''This function shows Basket Model that is created after accepting goods in Shop view.
    You have the ability to delete items from the Basket and accept the basket in order to create an invoice'''
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
            Invoice.objects.create(
                invoice_number = gen_invoice,
                quantity = quantity_total,
                value = value_total,
            )
            for i in range(0,Basket.objects.all().count()):
                Invoices.objects.create(
                    invoice = Invoice.objects.get(invoice_number = gen_invoice),
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