from django.shortcuts import render
from basket.models import Basket
from .models import Invoice, Invoices
from django.contrib.auth.decorators import login_required
from .filters import SnippetFilter


@login_required(login_url='/login')
def show_invoices(request):
    '''Function shows Invoices that are created each for each purchased Basket'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
    invs_base = Invoices.objects.all()
    n_objects = Basket.objects.all().count()
    if request.method == "POST":
        if 'form_invoice_number' in request.POST:
            instance = Invoice.objects.filter(
                invoice_number=request.POST['form_invoice_number'])
            instance.delete()
        elif 'show_details' in request.POST:
            invs_base = Invoices.objects.filter(invoice = request.POST["show_details"])
        else:
            pass
    context = {
        'logged_in': logged_in,
        'invs_base': invs_base,
        'n_objects': n_objects,
        'filter': SnippetFilter(request.GET),
    }
    return render(request, "invoices.html", context)
