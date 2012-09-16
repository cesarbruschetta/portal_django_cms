from django.contrib import admin
from models import Slide

admin.site.register(Slide,admin_class=Slide.Admin)
