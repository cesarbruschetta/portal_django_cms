# -*- coding: utf-8 -*-

from django import template
from django.contrib.sites.models import Site

from portal.models import Slide

register = template.Library()
    
@register.filter
def get_Slides(self):
    itens = Slide.objects.all().order_by('publicacao')
    return itens

@register.filter
def get_Site(self):
    current_site = Site.objects.get_current()
    return current_site.name
