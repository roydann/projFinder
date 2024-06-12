FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

RUN python manage.py collectstatic --noinput

EXPOSE 8000

ENV PYTHONUNBUFFERED 1

CMD exec gunicorn projectf1.wsgi:application --bind 0.0.0.0:${PORT}