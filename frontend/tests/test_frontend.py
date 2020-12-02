from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from app import app

class TestBase(TestCase):
    def create_app(self):
        app.config.update(SQLALCHEMY_DATABASE_URI="sqlite:///",
                SECRET_KEY='TEST_SECRET_KEY',
                DEBUG=True)
        return app

class TestResponse(TestBase):
    def test_frontend_response(self):
        with patch("requests.get") as g:
            with patch("requests.post") as p:
                g.return_value.text = "Avenger"
                p.return_value.text = "20"
                response = self.client.get(url_for("index", data="Avenger Mei"))
                self.assertEqual(response.status_code, 200) 