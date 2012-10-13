portal_django_cms
================

Site Em Django,  utilizando o framework Django e o django-cms.


Instalação
-------------------------------

Pre-requisitos
	Python =  2.6
		

Instalação

	django = 1.4.1
	django-cms = 2.3.3
	PIL 
	south 
	Mysql-Python
	
Criação do Banco de Dados

	python manage.py syncdb --all
	python manage.py migrate --fake
	

Iniciar o Servidor de devenvolvimento
	python manage.py runserver

