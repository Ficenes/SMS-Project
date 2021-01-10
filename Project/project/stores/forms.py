from django import forms
from .models import Customer_Stock_info

class StoresQuantityForm(forms.ModelForm):
    class Meta:
        model = Customer_Stock_info
        fields = [
            'area',
            'country',
            'city',
            'store_name',
            'sku',
            'product_description',
            'invoice_number',
            'quantity',
            'price',
        ]
        labels = {
            'area': '',
            'country': '',
            'city': '',
            'store_name': '',
            'sku': '',
            'product_description': '',
            'invoice_number': '',
            'quantity': '',
            'price': '',
        }
