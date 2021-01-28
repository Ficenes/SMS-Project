from django.test import Client


class TestViews:

    def test_view(self):
        c = Client()
        response = c.get('/store_stock/')
        assert response.status_code == 302
