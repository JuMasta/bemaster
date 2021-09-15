from django.db import models
from django.contrib.auth.models import User

# # Create your models here.



class Lesson(models.Model):
    username = models.CharField(max_length=200)
    lesson_name = models.CharField(max_length=50)
    date_start = models.DateTimeField()
    date_end = models.DateTimeField()
    def __str__(self):
        return self.username + ': ' + self.lesson_name
