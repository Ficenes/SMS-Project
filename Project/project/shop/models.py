from django.db import models
from django.conf import settings

class Shop(models.Model):
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    quantity = models.IntegerField()
    price = models.IntegerField()
    value = models.IntegerField()

class Basket(models.Model):
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    quantity = models.IntegerField()
    price = models.IntegerField()
    value = models.IntegerField()