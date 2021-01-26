from django.db import models
from datetime import datetime


class Invoice(models.Model):
    '''Invoice database model'''
    invoice_number = models.CharField(max_length=64)
    invoice_date = models.DateField(auto_now_add=True)
    quantity = models.IntegerField()
    value = models.IntegerField()

    def __str__(self):
        return self.invoice_number

class Invoices(models.Model):
    '''Detailed Invoices database model'''
    invoice = models.ForeignKey(Invoice, on_delete = models.CASCADE)
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    quantity = models.IntegerField()
    price = models.IntegerField()
    value = models.IntegerField()

    def __str__(self):
        return self.product_description