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
    def test_class_response(self):
           
        response = self.client.get(url_for("classgen"))
        self.assertEqual(response.status_code, 200)  