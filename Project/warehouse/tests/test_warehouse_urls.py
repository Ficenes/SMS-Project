from django import urls


class TestUrls:

    def test_warehouse_view(self):
        path = urls.reverse('warehouse')
        assert urls.resolve(path).view_name == 'warehouse'
