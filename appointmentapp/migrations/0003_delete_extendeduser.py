# Generated by Django 3.2.5 on 2021-09-11 13:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('admin', '0003_logentry_add_action_flag_choices'),
        ('appointmentapp', '0002_auto_20210911_1642'),
    ]

    operations = [
        migrations.DeleteModel(
            name='ExtendedUser',
        ),
    ]
