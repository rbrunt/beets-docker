FROM python:3.13-alpine

COPY requirements.txt .

RUN apk add --no-cache ffmpeg && pip install -r requirements.txt 

VOLUME /config

# volume for music
# volume for input
# volume to save library

ENTRYPOINT ["beet"]
CMD ["--help"]