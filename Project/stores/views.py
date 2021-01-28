from django.shortcuts import render
from .models import Customer_Stock_info
from .forms import StoresQuantityForm
from .filters import SnippetFilter
from basket.models import Basket
from warehouse.models import Warehouse_Stock_info
import pandas as pd
from django.contrib.auth.decorators import login_required


def SiteToExcel(request):
    '''Function downloadls the PSQL Database to computer in Excel extension'''
    df = SnippetFilter(request.GET).qs.values()
    new_df = pd.DataFrame(df)
    try:
        download = new_df.to_excel(excel_writer="stores/static/stores_db.xlsx", index=False, columns=['area', 'country', 'city', 'store_name',
                                                                                                      'sku', 'product_description', 'packing_number', 'quantity', 'price', 'value'])
    except Exception:
        download = new_df.to_excel(excel_writer="stores/static/stores_db.xlsx")
    return download


def ExcelToSite(file):
    '''
    Function uploads an Excel file's Database and overrides existing database in PostgreSQL

        Parameters:
            file :  required excel file with extension of .xlsx
    '''
    Customer_Stock_info.objects.all().delete()
    df = pd.read_excel(file)
    for i in range(df.shape[0]):
        Customer_Stock_info.objects.create(
            area=df.area[i],
            country=df.country[i],
            city=df.city[i],
            store_name=df.store_name[i],
            sku=df.sku[i],
            product_description=df.product_description[i],
            packing_number=df.packing_number[i],
            quantity=df.quantity[i],
            price=df.price[i],
            value=df.value[i],
        )


@login_required(login_url='/login')
def show_store_stock(request):
    '''Function shows currenct stores stock with ablity to Add, Delete, Filter, Edit entries
    as well as upload new database and download it.'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
    n_objects = Basket.objects.all().count()
    query_results = Customer_Stock_info.objects.all()
    form = StoresQuantityForm()
    saved = ''
    error = ''
    is_add_form = False
    is_delete_form = False
    is_edit_form = False
    edit_id = ''
    to_be_edit = ''
    is_filter_form = False
    if request.method == 'POST':
        if 'fileToUpload' in request.POST:
            try:
                uploaded_file = request.FILES['fileToUpload']
                path = uploaded_file.read()
                ExcelToSite(path)
            except Exception:
                error = '''<p id="error">Please upload the file</p>'''
        elif 'form_delete' in request.POST:
            to_del = Customer_Stock_info.objects.filter(
                id=request.POST['form_id'])
            to_del.delete()
            is_delete_form = True
        elif 'form_edit' in request.POST:
            my_record = Customer_Stock_info.objects.filter(
                id=request.POST['form_id']).first()
            form = StoresQuantityForm(instance=my_record)
            edit_id = request.POST['form_id']
            to_be_edit = 'to_be_edit'
            is_edit_form = True
            is_add_form = True
        elif 'to_be_edit' in request.POST:
            my_record = Customer_Stock_info.objects.filter(
                id=request.POST['to_be_edit']).first()
            form = StoresQuantityForm(request.POST, instance=my_record)
            if form.is_valid():
                instance = form.save(commit=False)
                instance.value = instance.price * instance.quantity
                instance.save()
                saved = 'Data Added'
                form = StoresQuantityForm()
            is_add_form = True
        else:
            form = StoresQuantityForm(request.POST)
            if form.is_valid():
                instance = form.save(commit=False)
                instance.value = instance.price * instance.quantity
                instance.save()
                instance.warehouse.add(Warehouse_Stock_info.objects.filter(
                    warehouse_name='Sikorki').first())
                saved = 'Data Added'
                form = StoresQuantityForm()
            is_add_form = True
    if request.method == 'GET':
        if 'value' in request.GET:
            is_filter_form = True
    context = {
        'logged_in': logged_in,
        'query_results': query_results,
        'download': SiteToExcel(request),
        'form': form,
        'is_add_form': is_add_form,
        'is_filter_form': is_filter_form,
        'is_delete_form': is_delete_form,
        'is_edit_form': is_edit_form,
        'to_be_edit': to_be_edit,
        'edit_id': edit_id,
        'saved': saved,
        'error': error,
        'n_objects': n_objects,
        'filter': SnippetFilter(request.GET),
    }
    return render(request, "stores.html", context)
