#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"adityarawat118@gmail.com"}
cd /app/
/opt/venv/bin/python manape.py migrate --noinput
/opt/venv/bin/python manape.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true

