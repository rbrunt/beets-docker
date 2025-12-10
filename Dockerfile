FROM python:3.14-alpine

COPY requirements.txt .
RUN apk add --no-cache ffmpeg cairo \
 && apk add --no-cache --virtual build-deps build-base cairo-dev cmake pkgconf \
 && pip install --no-cache-dir -r requirements.txt \
 && apk del build-deps

WORKDIR /opt/beets
ENV BEETSDIR=/opt/beets
COPY config.yaml .

VOLUME /config

# volume for music
# volume for input
# volume to save library

ENTRYPOINT ["beet"]
CMD ["--help"]