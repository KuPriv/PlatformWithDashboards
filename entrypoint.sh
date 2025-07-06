#!/bin/bash
set -e

echo "Waiting for database..."
# Проверка доступности PostgreSQL
while ! nc -z $DB_HOST $DB_PORT; do
  sleep 0.5
done

echo "Database is up – continuing..."


# Применение миграций
poetry run python manage.py migrate

# Сборка статики
poetry run python manage.py collectstatic --noinput

# Запуск сервера
exec gunicorn PlatformWithDashboards.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3
