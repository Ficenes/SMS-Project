from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Customer_Stock_info
from .forms import StoresQuantityForm
import pandas as pd


def SiteToExcel():
    df = Customer_Stock_info.objects.all().values()
    new_df = pd.DataFrame(df)
    return new_df.to_excel(excel_writer = "stores/static/stores_db.xlsx", index = False, columns=['area', 'country', 'city', 'store_name',
     'sku', 'product_description', 'invoice_number', 'quantity', 'price', 'value'])

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
        value = df.value[i],
        )

def show_store_stock(request):
    query_results = Customer_Stock_info.objects.all()
    form = StoresQuantityForm()
    saved = ''
    error = ''
    if request.method == 'POST':
        if 'fileToUpload' in request.POST:
            try:
                uploaded_file = request.FILES['fileToUpload']
                ExcelToSite(uploaded_file)
            except:
                error = '''<p id="error">Please upload the file</p>'''
        else:
            form = StoresQuantityForm(request.POST or None)
            if form.is_valid():
                instance = form.save(commit=False)
                instance.value = instance.price * instance.quantity
                instance.save()
                saved = 'Data Added'
                form = StoresQuantityForm()
    context = { 
        'query_results' : query_results,
        'download': SiteToExcel,
        'form': form,
        'saved' : saved,
        'error' : error,
    }
    return render(request, "stores.html", context)