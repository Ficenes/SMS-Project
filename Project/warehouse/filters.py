import django_filters
from django_filters import CharFilter, NumberFilter, BooleanFilter, DateFilter
from .models import Warehouse_Stock_info
from django.forms.widgets import TextInput, NumberInput, NullBooleanSelect, SelectDateWidget


class SnippetFilter(django_filters.FilterSet):
    '''Filter Form for Warehouse Stock database model'''
    warehouse_name = CharFilter(field_name="warehouse_name", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Warehouse Name', 'class' : 'Warehouse_Quantity_Form'}))
    warehouse_type = CharFilter(field_name="warehouse_type", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Warehouse Type', 'class' : 'Warehouse_Quantity_Form'}))
    warehouse_location = CharFilter(field_name="warehouse_location", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Warehouse Location', 'class' : 'Warehouse_Quantity_Form'}))
    sku = CharFilter(field_name="sku", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'SKU', 'class' : 'Warehouse_Quantity_Form'}))
    product_description = CharFilter(field_name="product_description", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Product Description', 'class' : 'Warehouse_Quantity_Form'}))
    invoice_number = CharFilter(field_name="invoice_number", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Invoice Number', 'class' : 'Warehouse_Quantity_Form'}))
    purchase_date = DateFilter(field_name="purchase_date", lookup_expr="icontains", label='', 
        widget=SelectDateWidget(attrs={'placeholder': 'Purchase Date', 'class' : 'Warehouse_Quantity_Form'}))
    quantity = NumberFilter(field_name="quantity", lookup_expr="icontains", label='', 
        widget=NumberInput(attrs={'placeholder': 'Quantity', 'class' : 'Warehouse_Quantity_Form'}))
    price = NumberFilter(field_name="price", lookup_expr="icontains", label='', 
        widget=NumberInput(attrs={'placeholder': 'Price', 'class' : 'Warehouse_Quantity_Form'}))
    value = NumberFilter(field_name="value", lookup_expr="icontains", label='', 
        widget=NumberInput(attrs={'placeholder': 'Value', 'class' : 'Warehouse_Quantity_Form'}))
    in_packing = BooleanFilter(field_name="in_packing", lookup_expr="icontains", label='', 
        widget=NullBooleanSelect(attrs={'placeholder': 'In Packing', 'class' : 'Warehouse_Quantity_Form'}))
    class Meta:
        model = Warehouse_Stock_info
        fields = '__all__'