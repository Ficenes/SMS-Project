from django import urls


class TestUrls:

    def test_users_view(self):
        path = urls.reverse('login')
        assert urls.resolve(path).view_name == 'login'
