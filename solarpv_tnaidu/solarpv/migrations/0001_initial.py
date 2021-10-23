# Generated by Django 3.2.5 on 2021-10-23 04:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='client',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('clientName', models.CharField(max_length=30)),
                ('clientType', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('productName', models.CharField(max_length=50)),
                ('cellTechnology', models.CharField(max_length=50)),
                ('cellManufacturer', models.CharField(max_length=50)),
                ('numberOfCells', models.CharField(max_length=50)),
                ('series', models.CharField(max_length=50)),
                ('seriesString', models.CharField(max_length=50)),
                ('diodes', models.CharField(max_length=50)),
                ('length', models.IntegerField()),
                ('width', models.IntegerField()),
                ('weight', models.IntegerField()),
                ('superstateType', models.CharField(max_length=50)),
                ('superstateManufacturer', models.CharField(max_length=50)),
                ('substrateType', models.CharField(max_length=50)),
                ('substrateManufacturer', models.CharField(max_length=50)),
                ('frameType', models.CharField(max_length=50)),
                ('frameAdhesive', models.CharField(max_length=50)),
                ('encapsulateType', models.CharField(max_length=50)),
                ('encapsulateManufacturer', models.CharField(max_length=50)),
                ('junctionBoxType', models.CharField(max_length=50)),
                ('junctionBoxManufacturer', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='testSequence',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sequenceName', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='testStandard',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('standardName', models.CharField(max_length=30)),
                ('description', models.TextField()),
                ('publishedDate', models.DateField()),
            ],
        ),
        migrations.CreateModel(
            name='user',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstName', models.CharField(max_length=30)),
                ('lastName', models.CharField(max_length=30)),
                ('middleName', models.CharField(max_length=30)),
                ('jobTitle', models.CharField(max_length=30)),
                ('email', models.CharField(max_length=50)),
                ('officePhone', models.CharField(max_length=20)),
                ('cellPhone', models.CharField(max_length=20)),
                ('prefix', models.CharField(max_length=5)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.client')),
            ],
        ),
        migrations.CreateModel(
            name='service',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('serviceName', models.CharField(max_length=30)),
                ('description', models.TextField()),
                ('isFIRequired', models.BooleanField()),
                ('FIFrequency', models.IntegerField()),
                ('standard', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.teststandard')),
            ],
        ),
        migrations.CreateModel(
            name='performanceData',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('maxSystemVoltage', models.IntegerField()),
                ('voc', models.FloatField()),
                ('isc', models.FloatField()),
                ('vmp', models.FloatField()),
                ('imp', models.FloatField()),
                ('pmp', models.FloatField()),
                ('ff', models.FloatField()),
                ('modelNumber', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.product')),
                ('sequence', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.testsequence')),
            ],
        ),
        migrations.CreateModel(
            name='location',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('address1', models.TextField()),
                ('address2', models.TextField()),
                ('city', models.CharField(max_length=30)),
                ('state', models.CharField(max_length=2)),
                ('postalCode', models.CharField(max_length=5)),
                ('country', models.CharField(max_length=30)),
                ('phoneNumber', models.CharField(max_length=20)),
                ('faxNumber', models.CharField(max_length=20)),
                ('client', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.client')),
            ],
        ),
        migrations.CreateModel(
            name='certficate',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('certificateID', models.CharField(max_length=10)),
                ('reportNumber', models.IntegerField()),
                ('issueDate', models.DateField()),
                ('location', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.location')),
                ('modelNumber', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.product')),
                ('standard', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.teststandard')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solarpv.user')),
            ],
        ),
    ]