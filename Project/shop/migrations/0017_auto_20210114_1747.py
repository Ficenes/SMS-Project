# Generated by Django 2.2.16 on 2021-01-14 17:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0016_auto_20201209_0941'),
    ]

    operations = [
        migrations.DeleteModel(
            name='basket',
        ),
        migrations.AddField(
            model_name='shop',
            name='pic',
            field=models.ImageField(blank=True, null=True, upload_to=''),
        ),
    ]
