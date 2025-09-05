@echo off
python manage.py runserver_plus --cert-file localhost+2.pem --key-file localhost+2-key.pem
pause
