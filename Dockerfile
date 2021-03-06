FROM python:3.9.6-alpine3.14

RUN /sbin/apk add --no-cache ffmpeg

COPY requirements.txt /youtube-dl/requirements.txt
RUN /usr/local/bin/pip install --no-cache-dir --requirement /youtube-dl/requirements.txt

ENTRYPOINT ["/usr/local/bin/youtube-dl"]
