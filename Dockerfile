FROM python:3.11-slim
WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get clean

COPY app/ .
RUN pip install -r requirements.txt
RUN pip install --upgrade wheel pip