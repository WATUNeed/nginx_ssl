FROM python:3.11-slim-buster

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONIOENCODING=utf-8

COPY ./requerments/dev-backend.txt /tmp/requerments/dev-backend.txt

RUN pip install -U pip &&  \
    pip install --no-cache-dir -r /tmp/requerments/dev-backend.txt

COPY ./backend/ /backend/

WORKDIR /backend/