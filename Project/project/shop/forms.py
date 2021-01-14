from django import forms
from .models import Shop

class ShopQuantityForm(forms.Form):
    quantity = forms.IntegerField(label='', widget=forms.NumberInput(attrs={'class' : 'quantity_form'}))
    def clean_quantity(self):
        quantity = self.cleaned_data.get("quantity")
        if quantity <= 0:
            raise forms.ValidationError('Invalid number')
        else:
            return quantity