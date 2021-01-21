import django_filters
from django_filters import CharFilter
from .models import Customer_Stock_info


class SnippetFilter(django_filters.FilterSet):
    # new_area = CharFilter(field_name="area", lookup_expr="icontains")
	class Meta:
		model = Customer_Stock_info
		fields = {
            'area' : ['icontains'],
			'country' : ['icontains'],
            'city' : ['icontains'],
            'store_name' : ['icontains'],
            'sku' : ['icontains'],
            'invoice_number' : ['icontains'],
            'quantity' : ['icontains'],
            'price' : ['icontains'],
            'value' : ['icontains'],
            }