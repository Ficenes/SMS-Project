from django.db import models

class Customer_Stock_info(models.Model):
    area = models.CharField(max_length=64)
    country = models.CharField(max_length=64)
    city = models.CharField(max_length=128)
    store_name = models.CharField(max_length=128)
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    invoice_number = models.CharField(max_length=64)
    quantity = models.IntegerField()
    price = models.IntegerField()

    @property
    def value(self):
        return self.quantity * self.price

