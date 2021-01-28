from warehouse.models import Warehouse_Stock_info
import pytest


@pytest.mark.django_db
class TestModels:

    def test_warehouse_model(self):
        product = Warehouse_Stock_info.objects.create(
            warehouse_name = 'a',
            warehouse_type = 'a',
            warehouse_location = 'a',
            sku = 'a',
            product_description = 'a',
            invoice_number = 'a',
            purchase_date = '2018-01-01',
            quantity = 1,
            price = 1,
            value = 1,
            in_packing = False,
        )
        assert product.in_packing == False
