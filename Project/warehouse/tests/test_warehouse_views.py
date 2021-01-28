from django.test import Client


class TestViews:

    def test_warehouse_client(self):
        c = Client()
        response = c.get('/warehouse_stock/')
        assert response.status_code == 302
