FROM ubuntu:18.04

RUN apt-get update && apt-get install -y ffmpeg mediainfo \
 && rm -rf /var/lib/apt/lists/*

COPY chromecastize.sh .
RUN chmod +x chromecastize.sh

ENTRYPOINT chromecastize.sh
CMD ["--config=/config.sh"]
