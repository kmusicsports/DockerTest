FROM python:3

WORKDIR /project

RUN pip install --upgrade pip
RUN pip install flask
