from django.db import models


class Basket(models.Model):
    '''Basket database model'''
    pic = models.ImageField(null=True, blank=True)
    sku = models.CharField(max_length=64)
    product_description = models.CharField(max_length=256)
    quantity = models.IntegerField()
    value = models.IntegerField()
    price = models.IntegerField()

    def __str__(self):
        return self.product_description
