from django.test import Client


class TestViews:

    def test_shop_view(self):
        c = Client()
        response = c.get('/shop/')
        assert response.status_code == 302
