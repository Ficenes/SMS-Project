from stores.models import Customer_Stock_info
import pytest


@pytest.mark.django_db
class TestModels():

    def test_stores_model(self):
        product = Customer_Stock_info.objects.create(
            area = 'a',
            country = 'b',
            city = 'c',
            store_name = 'd',
            sku = 'e',
            product_description = 'f',
            packing_number = 'g',
            quantity = 1,
            price = 1,
            value = 1,
        )
        assert product.area == 'a'
