from django.db import models


class Warehouse_Stock_info(models.Model):
    '''Warehouse Stock database model'''
    warehouse_name = models.CharField(max_length=64)
    warehouse_type = models.CharField(max_length=64)
    warehouse_location = models.CharField(max_length=64)
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    invoice_number = models.CharField(max_length=64)
    purchase_date = models.DateField()
    quantity = models.IntegerField()
    price = models.IntegerField()
    value = models.IntegerField(blank=True, null=True)
    in_packing = models.BooleanField(default = False)