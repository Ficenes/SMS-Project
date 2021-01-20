from django.shortcuts import render
from basket.models import Basket
from .models import Invoices
from django_pivot.pivot import pivot


def show_invoices(request):
    inv_base = Invoices.objects.all()
    pivot_table = pivot(Invoices, 'invoice_number', 'quantity', 'value')
    n_objects = Basket.objects.all().count()
    if request.method == "POST":
        instance = Invoices.objects.filter(invoice_number = request.POST['form_invoice_number'])
        instance.delete()
    context = {
        'inv_base' : inv_base,
        'n_objects' : n_objects,
        'pivot_table' : pivot_table,
    }
    return render(request, "invoices.html", context)