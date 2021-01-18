from django.shortcuts import render
from basket.models import Basket
from .models import Invoices


def show_invoices(request):
    query_results = Invoices.objects.all()
    n_objects = Basket.objects.all().count()
    if request.method == "POST":
        instance = Invoices.objects.filter(invoice_number = request.POST['form_invoice_number'])
        instance.delete()
    context = {
        'query_results' : query_results,
        'n_objects' : n_objects,
    }
    return render(request, "invoices.html", context)