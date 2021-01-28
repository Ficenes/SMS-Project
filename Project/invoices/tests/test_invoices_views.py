from django.test import Client


class TestViews:

    def test_invoices_client(self):
        c = Client()
        response = c.get('/invoices/')
        assert response.status_code == 302
