FROM ubuntu:18.04

RUN apt-get update && apt-get install -y ffmpeg mediainfo \
 && rm -rf /var/lib/apt/lists/*

ENV CONFIG_DIRECTORY /config
VOLUME /config

COPY chromecastize.sh /usr/local/bin/chromecastize.sh
COPY config.sh /config/config.sh
RUN chmod +x /usr/local/bin/chromecastize.sh

ENTRYPOINT ["/usr/local/bin/chromecastize.sh"]
