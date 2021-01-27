from django import forms
from .models import Warehouse_Stock_info


class WarehouseQuantityForm(forms.ModelForm):
    '''Form to add an entry into Warehouse Stock database model'''
    class Meta:
        model = Warehouse_Stock_info
        fields = [
            'warehouse_name',
            'warehouse_type',
            'warehouse_location',
            'sku',
            'product_description',
            'invoice_number',
            'purchase_date',
            'quantity',
            'price',
            'value',
            'in_packing',
        ]
        labels = {
            'warehouse_name': '',
            'warehouse_type': '',
            'warehouse_location': '',
            'sku': '',
            'product_description': '',
            'invoice_number': '',
            'purchase_date': '',
            'quantity': '',
            'price': '',
            'value': '',
            'in_packing': '',
        }
        widgets = {
            'warehouse_name': forms.TextInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Warehouse Name'}),
            'warehouse_type': forms.TextInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Warehouse Type'}),
            'warehouse_location': forms.TextInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Warehouse Location'}),
            'sku': forms.TextInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'SKU'}),
            'product_description': forms.TextInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Product Description'}),
            'invoice_number': forms.TextInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Invoice Number'}),
            'purchase_date': forms.SelectDateWidget(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Purchase Date'}),
            'quantity': forms.NumberInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Quantity'}),
            'price': forms.NumberInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Price'}),
            'value': forms.HiddenInput(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'Value'}),
            'in_packing': forms.NullBooleanSelect(attrs={'class': 'Warehouse_Quantity_Form', 'PlaceHolder': 'In Packing'}),
        }
