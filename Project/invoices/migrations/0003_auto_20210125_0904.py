# Generated by Django 3.1.5 on 2021-01-25 09:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('invoices', '0002_auto_20210118_2057'),
    ]

    operations = [
        migrations.CreateModel(
            name='Invoice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('invoice_number', models.CharField(max_length=64)),
                ('invoice_date', models.DateField(auto_now_add=True)),
                ('quantity', models.IntegerField()),
                ('value', models.IntegerField()),
            ],
        ),
        migrations.RemoveField(
            model_name='invoices',
            name='invoice_date',
        ),
        migrations.RemoveField(
            model_name='invoices',
            name='invoice_number',
        ),
        migrations.AddField(
            model_name='invoices',
            name='invoice',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='invoices.invoice'),
            preserve_default=False,
        ),
    ]
