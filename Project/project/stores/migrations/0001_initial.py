# Generated by Django 3.1.3 on 2020-12-03 12:06

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customer_Stock_info',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('area', models.CharField(max_length=64)),
                ('country', models.CharField(max_length=64)),
                ('city', models.CharField(max_length=128)),
                ('customer_name', models.CharField(max_length=128)),
                ('store_name', models.CharField(max_length=128)),
                ('sku', models.CharField(max_length=64)),
                ('product_description', models.CharField(max_length=256)),
                ('invoice_number', models.CharField(max_length=64)),
                ('quantity', models.IntegerField()),
                ('price', models.IntegerField()),
                ('value', models.IntegerField()),
            ],
        ),
    ]