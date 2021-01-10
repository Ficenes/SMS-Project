from django import forms
from .models import Shop, Basket

class ShopQuantityForm(forms.ModelForm):
    class Meta:
        model = Basket
        fields = [
            'sku',
            'product_description',
            'quantity',
            'price',
            'value',
        ]
# quantity = forms.IntegerField(label='', widget=forms.NumberInput(attrs={'class' : 'quantity_form'}))
'''
def clean_quantity(self):
    quantity = self.cleaned_data.get("quantity")
    if quantity <= 0:
        raise forms.ValidationError("Invalid number")
    else:
        return quantity
'''
