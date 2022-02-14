from turtle import title
from django.db import models

# Create your models here.
class Usersdata(models.Model):

    username = models.CharField(max_length=100)
    file = models.FileField(upload_to='video')  
    desc = models.TextField(max_length=1000)
    title = models.TextField(max_length=100)
    