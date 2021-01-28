from django import urls


class TestUrls():

    def test_stores_view(self):
        path = urls.reverse('stores')
        assert urls.resolve(path).view_name == 'stores'
