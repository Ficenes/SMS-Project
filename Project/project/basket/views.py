from django.shortcuts import render, redirect
from .models import Basket
from django.db.models import Sum


def show_basket(request):
    query_results = Basket.objects.all()
    n_objects = Basket.objects.all().count()
    quantity_total = Basket.objects.all().aggregate(Sum('quantity'))['quantity__sum']
    value_total = Basket.objects.all().aggregate(Sum('value'))['value__sum']
    if request.method == 'POST':
        to_del = Basket.objects.filter(id = request.POST['form_id'])
        to_del.delete()
        return redirect('/basket/')
    context = {
        'query_results' : query_results,
        'n_objects' : n_objects,
        'quantity_total' :  quantity_total,
        'value_total' : value_total
    }
    return render(request, "basket.html", context)