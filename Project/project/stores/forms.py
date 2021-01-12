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
            'area': 'Area',
            'country': 'Country',
            'city': 'City',
            'store_name': 'Store Name',
            'sku': 'SKU',
            'product_description': 'Product Description',
            'invoice_number': 'Invoice Number',
            'quantity': 'Quantity',
            'price': 'Price',
        }
        widgets = {
            'area': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'country': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'city': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'store_name': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'sku': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'product_description': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'invoice_number': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'quantity': forms.NumberInput(attrs={'class' : 'Stores_Quantity_Form'}),
            'price': forms.NumberInput(attrs={'class' : 'Stores_Quantity_Form'}),
        }