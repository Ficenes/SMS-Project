from django import urls


class TestUrls:

    def test_invoices_view(self):
        path = urls.reverse('invoices')
        assert urls.resolve(path).view_name == 'invoices'
