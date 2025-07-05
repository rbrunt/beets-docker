FROM python:3.13-alpine

RUN apk add --no-cache beets ffmpeg

WORKDIR /opt/beets
ENV BEETSDIR=/opt/beets
COPY config.yaml .

VOLUME /config

# volume for music
# volume for input
# volume to save library

ENTRYPOINT ["beet"]
CMD ["--help"]