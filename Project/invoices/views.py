from django.shortcuts import render
from basket.models import Basket
from .models import Invoice, Invoices
from django.contrib.auth.decorators import login_required
from .filters import SnippetFilter
from django.views import View
from django.utils.decorators import method_decorator



class InvoiceView(View):

    invs_base = Invoices.objects.all()
    n_objects = Basket.objects.all().count()
    logged_in = False
    
    def get(self, request):
        '''Function shows Invoices that are created each for each purchased Basket'''
        if request.user.is_authenticated:
            self.logged_in = True
        context = {
            'logged_in': self.logged_in,
            'invs_base': self.invs_base,
            'n_objects': self.n_objects,
            'filter': SnippetFilter(request.GET),
        }
        return render(request, "invoices.html", context)
    
    def post(self, request):
        '''Function deletes invoices / shows invoice details'''
        if request.user.is_authenticated:
            self.logged_in = True
        if 'form_invoice_number' in request.POST:
            instance = Invoice.objects.filter(
                invoice_number=request.POST['form_invoice_number'])
            instance.delete()
        elif 'show_details' in request.POST:
            self.invs_base = Invoices.objects.filter(invoice = request.POST["show_details"])
        else:
            pass
        context = {
            'logged_in': self.logged_in,
            'invs_base': self.invs_base,
            'n_objects': self.n_objects,
            'filter': SnippetFilter(request.GET),
        }
        return render(request, "invoices.html", context)

    @method_decorator(login_required(login_url='/login'))
    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)
