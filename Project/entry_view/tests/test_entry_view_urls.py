from django import urls


class TestUrls:

    def test_entry_view(self):
        path = urls.reverse('entry')
        assert urls.resolve(path).view_name == 'entry'
