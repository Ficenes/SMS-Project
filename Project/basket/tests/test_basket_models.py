from basket.models import Basket
import pytest


@pytest.mark.django_db
class TestModels:

    def test_basket_model(self):
        product = Basket.objects.create(
            sku = 'a',
            product_description = 'a',
            quantity = 1,
            value = 1,
            price = 1,
        )
        assert product.price == 1
