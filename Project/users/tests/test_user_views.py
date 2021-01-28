from django.test import Client


class TestViews:

    def test_users_client(self):
        c = Client()
        response = c.get('/login/')
        assert response.status_code == 200
