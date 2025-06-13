from django.db import models


class SampleModel(models.Model):
    text = models.CharField(max_length=200)
