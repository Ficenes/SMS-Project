from django import urls


class TestUrls:

    def test_basket_view(self):
        path = urls.reverse('basket')
        assert urls.resolve(path).view_name == 'basket'
