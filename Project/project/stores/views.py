from django.shortcuts import render
from django.http import HttpResponse
from .models import Customer_Stock_info
from .forms import StoresQuantityForm
import pandas as pd


def SiteToExcel():
    df = Customer_Stock_info.objects.all().values()
    new_df = pd.DataFrame(df)
    return new_df.to_excel(excel_writer = "stores/static/stores_db.xlsx", index = False, columns=['area', 'country', 'city', 'store_name',
     'sku', 'product_description', 'invoice_number', 'quantity', 'price'])

def ExcelToSite(file):
    Customer_Stock_info.objects.all().delete()
    df = pd.read_excel(file)
    for i in range(df.shape[0]):
        Customer_Stock_info.objects.create(
        area = df.area[i],
        country = df.country[i],
        city = df.city[i], 
        store_name = df.store_name[i],
        sku = df.sku[i],
        product_description = df.product_description[i],
        invoice_number = df.invoice_number[i],
        quantity = df.quantity[i],
        price = df.price[i],
        )

def show_store_stock(request):
    query_results = Customer_Stock_info.objects.all()
    form = StoresQuantityForm()
    if request.method == 'POST':
        if 'fileToUpload' in request.POST:
            uploaded_file = request.FILES['fileToUpload']
            ExcelToSite(uploaded_file)
        else:
            form = StoresQuantityForm(request.POST or None)
            if form.is_valid():
                form.save()
    context = { 
        'query_results' : query_results,
        'download': SiteToExcel,
        'form': form,
    }
    return render(request, "stores.html", context)

'''
def show_store_stock(request):
    query_results = Customer_Stock_info.objects.all()
    form = StoresQuantityForm(request.POST or None)
    if form.is_valid():
        form.save()
    if request.method == 'POST':
        uploaded_file = request.FILES['fileToUpload']
        ExcelToSite(uploaded_file)
    context = { 
        'query_results' : query_results,
        'download': SiteToExcel,
        'form': form,
    }
    return render(request, "stores.html", context)
'''