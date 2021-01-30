from stores.models import Customer_Stock_info
from warehouse.models import Warehouse_Stock_info
import pytest


@pytest.mark.django_db
class TestModels:

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

@pytest.mark.django_db
def test_accessing_stores_db(client, django_user_model):
    username = "alibaba"
    password = "michal123"
    django_user_model.objects.create_user(username=username, password=password)
    client.login(username = username, password = password)
    resp_get = client.get('/warehouse_stock/')
    resp_post = client.post('/warehouse_stock/', data = {
            'warehouse_name' : 'Alibaba',
            'warehouse_type' : 'b',
            'warehouse_location' : 'c',
            'sku' : 'd',
            'product_description' : 'z',
            'invoice_number' : 'k',
            'purchase_date' : '2018-01-01',
            'quantity' : 1,
            'price' : 1,
            'value' : 1,
            'in_packing' : False,
        })
    found = Warehouse_Stock_info.objects.get(warehouse_name = 'Alibaba')
    assert resp_get.status_code == 200
    assert resp_post.status_code == 200
    assert found.warehouse_name == 'Alibaba'

@pytest.mark.django_db
def test_login(client):
    resp = client.get('/login/')
    assert resp.status_code == 200