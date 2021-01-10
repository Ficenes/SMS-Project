from django.shortcuts import render
from django.http import HttpResponse
from .models import Customer_Stock_info
from .forms import StoresQuantityForm
import pandas as pd


def SiteToExcel():
    df = Customer_Stock_info.objects.all().values()
    new_df = pd.DataFrame(df)
    return new_df.to_excel("stores/static/stores_db.xlsx")

def show_store_stock(request):
    query_results = Customer_Stock_info.objects.all()
    form = StoresQuantityForm(request.POST or None)
    if form.is_valid():
        form.save()
    context = { 
        'query_results' : query_results,
        'download': SiteToExcel,
        'form': form,
    }
    return render(request, "stores.html", context)

