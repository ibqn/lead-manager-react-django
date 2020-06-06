FROM python:3.8-slim

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /leads

WORKDIR /leads

ADD requirements.txt /leads

RUN pip install --no-cache-dir --upgrade pip setuptools && \
  pip install --no-cache-dir --requirement lead-manager-django/requirements.txt

COPY lead-manager-django /app/
