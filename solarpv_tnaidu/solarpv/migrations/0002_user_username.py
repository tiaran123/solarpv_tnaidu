# Generated by Django 3.2.5 on 2021-11-21 00:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('solarpv', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='userName',
            field=models.CharField(default='test', max_length=30),
            preserve_default=False,
        ),
    ]
