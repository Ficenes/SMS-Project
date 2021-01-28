from django.test import Client
import pytest


@pytest.mark.django_db
class TestViews:

    def test_entry_view_client(self):
        c = Client()
        response = c.get('/')
        assert response.status_code == 200
