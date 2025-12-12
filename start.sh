#!/bin/sh
set -e

mkdir -p logs

python manage.py migrate --noinput

gunicorn movie_recommendation.wsgi:application --bind 0.0.0.0:8000 --workers 2
