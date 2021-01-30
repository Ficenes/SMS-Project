import django_filters
from django_filters import CharFilter, NumberFilter, DateFilter
from .models import Invoice
from django.forms.widgets import TextInput, NumberInput, HiddenInput, DateInput


class SnippetFilter(django_filters.FilterSet):
    '''Filter Form for Invoice database model'''
    invoice_number = CharFilter(field_name="invoice_number", lookup_expr="icontains", label='',
                                widget=TextInput(attrs={'placeholder': 'Invoice Number', 'class': 'Invoices_Filter_Form'}))
    invoice_date = DateFilter(field_name="invoice_date", lookup_expr="icontains", label='',
                              widget=DateInput(attrs={'placeholder': 'Invoice Date', 'class': 'Invoices_Filter_Form'}))
    quantity = NumberFilter(field_name="quantity", lookup_expr="icontains", label='',
                            widget=NumberInput(attrs={'placeholder': 'Quantity', 'class': 'Invoices_Filter_Form'}))
    value = NumberFilter(field_name="value", lookup_expr="icontains", label='',
                         widget=NumberInput(attrs={'placeholder': 'Value', 'class': 'Invoices_Filter_Form'}))
    value__gt = NumberFilter(field_name="value", lookup_expr="gt", label='',
                        widget=NumberInput(attrs={'placeholder': '> Value', 'class': 'Invoices_Filter_Form'}))

    class Meta:
        model = Invoice
        fields = '__all__'
