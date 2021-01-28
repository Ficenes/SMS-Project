from django import urls


class TestUrls:

    def test_shop_view(self):
        path = urls.reverse('shop')
        assert urls.resolve(path).view_name == 'shop'
