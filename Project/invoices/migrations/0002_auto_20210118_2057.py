# Generated by Django 2.2.16 on 2021-01-18 20:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('invoices', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='invoices',
            name='invoice_date',
            field=models.DateField(auto_now_add=True),
        ),
    ]
