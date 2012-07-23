# -*- coding: utf-8 -*-
import os, sys, logging

# Add lib as primary libraries directory, with fallback to lib/dist
# and optionally to lib/dist.zip, loaded using zipimport.
lib_path = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'lib')
if lib_path not in sys.path:
    #sys.setdefaultencoding("utf-8")
    sys.path[0:0] = [
        lib_path,
        os.path.join(lib_path, 'dist'),
        os.path.join(lib_path, 'dist.zip'),
    ]

# Google App Engine imports.
from google.appengine.ext.webapp import util

from google.appengine.dist import use_library
use_library('django', '1.3')


os.environ["DJANGO_SETTINGS_MODULE"] = "mashname.settings"
sys.path.append("/home/cesaraugusto/workspace/App_Engine/appengine_django")



# Force Django to reload its settings.
#from django.conf import settings
#settings._target = None

import django.core.handlers.wsgi
import django.core.signals
import django.db
import django.dispatch.dispatcher

# Log errors.
#django.dispatch.dispatcher.connect(
#   log_exception, django.core.signals.got_request_exception)

# Unregister the rollback event handler.
#django.dispatch.dispatcher.disconnect(
#django.db._rollback_on_exception,
#django.core.signals.got_request_exception)

def main():
    # Create a Django application for WSGI.
    application = django.core.handlers.wsgi.WSGIHandler()

    # Run the WSGI CGI handler with that application.
    util.run_wsgi_app(application)

if __name__ == "__main__":
    main()