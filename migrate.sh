#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"adityarawat118@gmail.com"}
cd /app/
echo "Applying Migrations"
/opt/venv/bin/python manage.py migrate --noinput
echo "Applying Migrations 2"
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true

