from django.db import models


# Create your models here.

class Index(models.Model):
    title = models.CharField(max_length=100)
    subtitle = models.CharField(max_length=150, blank=True)
    paragraphTitle = models.CharField(max_length=150, blank=True)
    content = models.TextField()
    image = models.ImageField(upload_to="indexImage")
    created = models.DateTimeField(auto_now=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = "Index"
        verbose_name_plural = "Index"


class Cover(models.Model):
    image = models.ImageField(upload_to="Cover")
    header = models.CharField(max_length=150)
    paragraph = models.TextField(blank = True)
    created = models.DateTimeField(auto_now=True)
    updated = models.DateTimeField(auto_now=True)

class Footer(models.Model):
    image = models.ImageField(upload_to="Footer")    
    created = models.DateTimeField(auto_now=True)
    updated = models.DateTimeField(auto_now=True)
    class Meta:
        verbose_name = "Footer"
        verbose_name_plural = "Footer"