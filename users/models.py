from django.contrib.auth.models import AbstractUser
from django.db import models


class AdvUser(AbstractUser):
    username = None
    email = models.EmailField("email", unique=True)

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []
