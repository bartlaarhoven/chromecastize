FROM ubuntu:18.04

RUN apt-get update && apt-get install -y ffmpeg mediainfo \
 && rm -rf /var/lib/apt/lists/*

ENV CONFIG_DIRECTORY /config
VOLUME /config

COPY chromecastize.sh .
COPY config.sh /config/config.sh
RUN chmod +x chromecastize.sh

ENTRYPOINT chromecastize.sh
