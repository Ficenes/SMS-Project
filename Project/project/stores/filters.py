import django_filters
from django_filters import CharFilter, NumberFilter
from .models import Customer_Stock_info
from django.forms.widgets import TextInput, NumberInput, HiddenInput


class SnippetFilter(django_filters.FilterSet):
    '''Filter Form for Stores Stock database model'''
    area = CharFilter(field_name="area", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Area', 'class' : 'Stores_Quantity_Form'}))
    country = CharFilter(field_name="country", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Country', 'class' : 'Stores_Quantity_Form'}))
    city = CharFilter(field_name="city", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'City', 'class' : 'Stores_Quantity_Form'}))
    store_name = CharFilter(field_name="store_name", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Store Name', 'class' : 'Stores_Quantity_Form'}))
    sku = CharFilter(field_name="sku", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'SKU', 'class' : 'Stores_Quantity_Form'}))
    product_description = CharFilter(field_name="product_description", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Product Description', 'class' : 'Stores_Quantity_Form'}))
    packing_number = CharFilter(field_name="packing_number", lookup_expr="icontains", label='', 
        widget=TextInput(attrs={'placeholder': 'Packing Number', 'class' : 'Stores_Quantity_Form'}))
    quantity = NumberFilter(field_name="quantity", lookup_expr="icontains", label='', 
        widget=NumberInput(attrs={'placeholder': 'Quantity', 'class' : 'Stores_Quantity_Form'}))
    price = NumberFilter(field_name="price", lookup_expr="icontains", label='', 
        widget=NumberInput(attrs={'placeholder': 'Price', 'class' : 'Stores_Quantity_Form'}))
    value = NumberFilter(field_name="value", lookup_expr="icontains", label='', 
        widget=NumberInput(attrs={'placeholder': 'Value', 'class' : 'Stores_Quantity_Form'}))
    warehouse = CharFilter(field_name="warehouse", lookup_expr="icontains", label='', 
        widget=HiddenInput(attrs={'placeholder': '', 'class' : 'Stores_Quantity_Form'}))
    class Meta:
        model = Customer_Stock_info
        fields = '__all__'