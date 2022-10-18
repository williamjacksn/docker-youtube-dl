FROM python:3.10.8-alpine3.16

RUN /sbin/apk add --no-cache aria2 ffmpeg
RUN /usr/sbin/adduser -g python -D python

USER python
RUN /usr/local/bin/python -m venv /home/python/venv

ENV PATH="/home/python/venv/bin:${PATH}" \
    PYTHONUNBUFFERED="1"

COPY --chown=python:python requirements.txt /home/python/youtube-dl/requirements.txt
RUN /home/python/venv/bin/pip install --no-cache-dir --requirement /home/python/youtube-dl/requirements.txt

ENTRYPOINT ["/home/python/venv/bin/youtube-dl"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.source="https://github.com/williamjacksn/docker-youtube-dl"
