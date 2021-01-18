from django.db import models
from datetime import datetime


class Invoices(models.Model):
    invoice_number = models.CharField(max_length=64)
    invoice_date = models.DateField(auto_now_add=True)
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    quantity = models.IntegerField()
    price = models.IntegerField()
    value = models.IntegerField()

    def __str__(self):
        return self.product_description