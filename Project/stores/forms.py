from django import forms
from .models import Customer_Stock_info

class StoresQuantityForm(forms.ModelForm):
    '''Form to add an entry into Stores Stock database model'''
    class Meta:
        model = Customer_Stock_info
        fields = [
            'area',
            'country',
            'city',
            'store_name',
            'sku',
            'product_description',
            'packing_number',
            'quantity',
            'price',
            'value',
            'warehouse',
        ]
        labels = {
            'area': '',
            'country': '',
            'city': '',
            'store_name': '',
            'sku': '',
            'product_description': '',
            'packing_number': '',
            'quantity': '',
            'price': '',
            'value': '',
            'warehouse': '',
        }
        widgets = {
            'area': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Area'}),
            'country': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Country'}),
            'city': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'City'}),
            'store_name': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Store Name'}),
            'sku': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'SKU'}),
            'product_description': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Product Description'}),
            'packing_number': forms.TextInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Packing Number'}),
            'quantity': forms.NumberInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Quantity'}),
            'price': forms.NumberInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Price'}),
            'value': forms.HiddenInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'Value'}),
            'warehouse': forms.HiddenInput(attrs={'class' : 'Stores_Quantity_Form', 'PlaceHolder' : 'warehouse'}),
        }