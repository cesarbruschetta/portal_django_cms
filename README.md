appengine_django
================

Site Em Django,  utilizando o framework Django e o django-cms.


Instalação
-------------------------------

Pre-requisitos
	Python =  2.6
		

Instalação
	django = 1.3.1
	django-cms = 2.3
	PIL
	South = 0.7.5
	django-reversion = 1.5.2
	
	gunicorn = 0.14.2
	
Criação do Banco de Dados

	python manage.py syncdb --all
	python manage.py migrate --fake
	

Iniciar o Servidor de devenvolvimento
	python manage.py runserver