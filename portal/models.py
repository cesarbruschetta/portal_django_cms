# -*- coding: utf-8 -*-
from django.db import models

# Create your models here.
from django.contrib import admin
from datetime import datetime

# Create your models here.


class Slide(models.Model):

    class Meta:
        ordering = ('-publicacao',)

    titulo = models.CharField(max_length=200)
    conteudo = models.TextField()
    publicacao = models.DateTimeField(default=datetime.now, blank=True)

    image = models.ImageField(upload_to='image', blank=True)

    def __str__(self):
        return '%s, %s' % (self.titulo, self.publicacao)

    class Admin(admin.ModelAdmin):
        list_display = ('titulo', 'publicacao',)
        ordering = ('titulo', )
