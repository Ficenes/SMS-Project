from django.db import models
from warehouse.models import Warehouse_Stock_info


class Customer_Stock_info(models.Model):
    '''Stores Stock database model'''
    area = models.CharField(max_length=64)
    country = models.CharField(max_length=64)
    city = models.CharField(max_length=128)
    store_name = models.CharField(max_length=128)
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    packing_number = models.CharField(max_length=64)
    quantity = models.IntegerField()
    price = models.IntegerField()
    value = models.IntegerField(blank=True, null=True)
    warehouse = models.ManyToManyField(Warehouse_Stock_info, blank=True)