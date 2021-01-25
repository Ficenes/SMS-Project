from django.shortcuts import render
from basket.models import Basket
from .models import Invoice, Invoices


def show_invoices(request):
    '''Function shows Invoices that are created each for each purchased Basket'''
    inv_base = Invoice.objects.all()
    invs_base = Invoices.objects.all()
    n_objects = Basket.objects.all().count()
    if request.method == "POST":
        instance = Invoice.objects.filter(invoice_number = request.POST['form_invoice_number'])
        instance.delete()
    context = {
        'inv_base' : inv_base,
        'invs_base' : invs_base,
        'n_objects' : n_objects,
    }
    return render(request, "invoices.html", context)