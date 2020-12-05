from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from app import app

class TestBase(TestCase):
    def create_app(self):
        app.config.update(SQLALCHEMY_DATABASE_URI=getenv('DB_URI'),
                SECRET_KEY=getenv('KEY'),
                DEBUG=True)
        return app

class TestResponse(TestBase):
    def test_name_response(self):
        with patch('requests.get') as c:
            c.return_value.text = "mei"
           
            response = self.client.get(url_for("namegen"))
            self.assertEqual(response.status_code, 200)  