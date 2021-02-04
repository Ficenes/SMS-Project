from django.shortcuts import render, redirect
from .models import Warehouse_Stock_info
from .forms import WarehouseQuantityForm
from .filters import SnippetFilter
from basket.models import Basket
import pandas as pd
from django.contrib.auth.decorators import login_required


def error(request):
    """Displays when an error occurs while uploading incorrect files"""
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
    n_objects = Basket.objects.all().count()
    context = {
        'logged_in': logged_in,
        'n_objects': n_objects,
    }
    return render(request, "error_warehouse.html", context)

def SiteToExcel(request):
    '''Function downloadls the PSQL Database to computer in Excel extension'''
    df = SnippetFilter(request.GET).qs.values()
    new_df = pd.DataFrame(df)
    try:
        download = new_df.to_excel(excel_writer="stores/static/warehouse_db.xlsx", index=False, columns=[
            'warehouse_name', 'warehouse_type', 'warehouse_location', 'sku', 'product_description',
            'invoice_number', 'purchase_date', 'quantity', 'price', 'value', 'in_packing'])
    except Exception:
        download = new_df.to_excel(
            excel_writer="stores/static/warehouse_db.xlsx")
    return download


def ExcelToSite(file, request):
    '''
    Function uploads an Excel file's Database and ovverides existing database in PostgreSQL

        Parameters:
            file :  required excel file with extension of .xlsx
    '''
    df = pd.read_excel(file)
    if df.shape[0] == 0:
        return error(request)
    else:
        Warehouse_Stock_info.objects.all().delete()
        for i in range(df.shape[0]):
            Warehouse_Stock_info.objects.create(
                warehouse_name=df.warehouse_name[i],
                warehouse_type=df.warehouse_type[i],
                warehouse_location=df.warehouse_location[i],
                sku=df.sku[i],
                product_description=df.product_description[i],
                invoice_number=df.invoice_number[i],
                purchase_date=df.purchase_date[i],
                quantity=df.quantity[i],
                price=df.price[i],
                value=df.value[i],
                in_packing=df.in_packing[i],
            )
        return redirect('/warehouse_stock/')


@login_required(login_url='/login')
def show_warehouse_stock(request):
    '''Function shows currenct warehouse stock with ablity to Add, Delete, Filter, Edit entries
    as well as upload new database and download it.'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
    n_objects = Basket.objects.all().count()
    query_results = Warehouse_Stock_info.objects.all()
    form = WarehouseQuantityForm()
    saved = ''
    error = ''
    is_add_form = False
    is_delete_form = False
    is_edit_form = False
    edit_id = ''
    to_be_edit = ''
    is_filter_form = False
    if request.method == 'POST':
        print(request.POST)
        if 'fileToUpload' in request.POST:
            try:
                uploaded_file = request.FILES['fileToUpload']
                path = uploaded_file.read()
                return ExcelToSite(path, request)
            except Exception:
                error = '''<p id="error">Please upload the file</p>'''
        elif 'form_delete' in request.POST:
            to_del = Warehouse_Stock_info.objects.filter(
                id=request.POST['form_id'])
            to_del.delete()
            is_delete_form = True
        elif 'form_edit' in request.POST:
            my_record = Warehouse_Stock_info.objects.filter(
                id=request.POST['form_id']).first()
            form = WarehouseQuantityForm(instance=my_record)
            edit_id = request.POST['form_id']
            to_be_edit = 'to_be_edit'
            is_edit_form = True
            is_add_form = True
        elif 'to_be_edit' in request.POST:
            my_record = Warehouse_Stock_info.objects.filter(
                id=request.POST['to_be_edit']).first()
            form = WarehouseQuantityForm(request.POST, instance=my_record)
            if form.is_valid():
                instance = form.save(commit=False)
                instance.value = instance.price * instance.quantity
                instance.save()
                saved = 'Data Added'
                form = WarehouseQuantityForm()
            is_add_form = True
        else:
            form = WarehouseQuantityForm(request.POST)
            if form.is_valid():
                instance = form.save(commit=False)
                instance.value = instance.price * instance.quantity
                instance.save()
                saved = 'Data Added'
                form = WarehouseQuantityForm()
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
        'edit_id': edit_id,
        'to_be_edit': to_be_edit,
        'saved': saved,
        'error': error,
        'n_objects': n_objects,
        'filter': SnippetFilter(request.GET),
    }
    return render(request, "warehouse.html", context)
