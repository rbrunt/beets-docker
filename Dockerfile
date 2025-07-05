FROM python:3.13-alpine

COPY requirements.txt .

RUN apk add --no-cache ffmpeg && pip install -r requirements.txt 

ENTRYPOINT beet