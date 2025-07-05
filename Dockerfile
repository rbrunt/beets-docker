FROM python:3.13-alpine

COPY requirements.txt .
RUN apk add --no-cache ffmpeg && pip install -r requirements.txt 

WORKDIR /opt/beets
ENV BEETSDIR /opt/beets
COPY config.yaml .

VOLUME /config

# volume for music
# volume for input
# volume to save library

ENTRYPOINT ["beet"]
CMD ["--help"]