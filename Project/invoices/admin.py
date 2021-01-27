from django.contrib import admin
from invoices.models import Invoice, Invoices


admin.site.register(Invoice)
admin.site.register(Invoices)
