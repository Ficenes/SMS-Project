from django.test import Client


class TestViews:

    def test_basket_client(self):
        c = Client()
        response = c.get('/basket/')
        assert response.status_code == 302
