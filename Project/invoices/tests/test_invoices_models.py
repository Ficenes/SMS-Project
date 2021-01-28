from invoices.models import Invoice
import pytest


@pytest.mark.django_db
class TestModels:

    def test_invoice_model(self):
        product = Invoice.objects.create(
            invoice_number = 'a',
            invoice_date = '2018-01-01',
            quantity = 1,
            value = 1,
        )
        assert product.value == 1
