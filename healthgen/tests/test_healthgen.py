from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from app import app

class TestBase(TestCase):
    def create_app(self):

        return app


class TestResponse(TestBase):
    def test_health_even(self):
           
        response = self.client.post('/healthgen', data='Avenger Mei')
        self.assertIn(b'20', response.data)

    def test_health_odd(self):
           
        response = self.client.post('/healthgen', data='Avenger Chen')
        self.assertIn(b'11', response.data)