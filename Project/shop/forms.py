from django import forms


class ShopQuantityForm(forms.Form):
    '''The Form checks whether someone has inputted a negative or zero number in shop form'''
    quantity = forms.IntegerField(
        label='', widget=forms.NumberInput(attrs={'class': 'quantity_form'}))

    def clean_quantity(self):
        quantity = self.cleaned_data.get("quantity")
        if quantity <= 0:
            raise forms.ValidationError('Invalid number')
        elif quantity >= 10000:
            raise forms.ValidationError('Too Big of a Number')
        else:
            return quantity
