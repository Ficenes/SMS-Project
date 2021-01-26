from django.shortcuts import render
from basket.models import Basket
from .models import Invoice, Invoices
from django.contrib.auth.decorators import login_required

@login_required(login_url = '/login')
def show_invoices(request):
    '''Function shows Invoices that are created each for each purchased Basket'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
    inv_base = Invoice.objects.all()
    invs_base = Invoices.objects.all()
    n_objects = Basket.objects.all().count()
    if request.method == "POST":
        instance = Invoice.objects.filter(invoice_number = request.POST['form_invoice_number'])
        instance.delete()
    context = {
        'logged_in' : logged_in,
        'inv_base' : inv_base,
        'invs_base' : invs_base,
        'n_objects' : n_objects,
    }
    return render(request, "invoices.html", context)