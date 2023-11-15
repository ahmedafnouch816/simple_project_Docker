FROM python:3

ENV PYTHONBUFFERED 1 
ENV PYTHONDONTWRITEBYTECODE 1 #pyc 

RUN mkdir /app

WORKDIR /app

RUN pip install  --upgrade pip 

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/



