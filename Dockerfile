FROM python:3.7-alpine
LABEL key="MARCELO PEPIS"

ENV PYTHONUNBUFFERED 1

COPY ./requeriments.txt /requeriments.txt

RUN pip install -r /requeriments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user


