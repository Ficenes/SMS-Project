# Generated by Django 3.1.3 on 2020-12-03 16:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0010_auto_20201203_1655'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shop',
            name='basket',
            field=models.ImageField(blank=True, null=True, upload_to='media/'),
        ),
    ]