from django.conf.urls import patterns, include, url

from django.conf import settings
from settings import PATH_STATIC

# Uncomment the next two lines to enable the admin:
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
                       # Examples:
                       # url(r'^$', 'portal_django_cms.views.home', name='home'),
                       # url(r'^portal_django_cms/',
                       # include('portal_django_cms.foo.urls')),

                       # Uncomment the admin/doc line below to enable admin documentation:
                       # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

                       url(r'^files/', include('database_files.urls')),

                       # Uncomment the next line to enable the admin:
                       url(r'^admin/', include(admin.site.urls)),

                       # Cms
                       url(r'^', include('cms.urls')),

                       # URL de arquivos staticos
                       url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
                           {'document_root': settings.MEDIA_ROOT, 'show_indexes': False}),

                       url(r'^statics/(?P<path>.*)$', 'django.views.static.serve',
                           {'document_root': PATH_STATIC, 'show_indexes': False}),

                       )
