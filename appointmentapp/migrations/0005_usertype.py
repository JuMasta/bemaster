# Generated by Django 3.2.5 on 2021-09-11 14:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('appointmentapp', '0004_user'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type_name', models.CharField(max_length=10)),
            ],
        ),
    ]