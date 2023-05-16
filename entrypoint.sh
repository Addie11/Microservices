#!/bin/bash
APP_PORT=${PORT:-8000}
echo "hey I am running from entrypoint.sh"
cd /app/
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:application --bind "0.0.0.0:${APP_PORT}"