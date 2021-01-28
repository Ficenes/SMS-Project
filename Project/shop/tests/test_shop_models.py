from shop.models import Shop
import pytest


@pytest.mark.django_db
class TestModels:

    def test_shop_model(self):
        product = Shop.objects.create(
            sku = 'a',
            product_description = 'a',
            quantity = 2,
            price = 2,
        )
        assert product.value == 4
