FROM python:3.7.15-slim
RUN apt update \
  && apt install libpq-dev gcc -y \
  && pip install Flask Psycopg2 ConfigParser \
  && apt remove gcc -y \
  && apt autoremove -y \
  && apt clean \
  && rm -rf /var/lib/apt/lists/* /var/tmp/* /var/cache/apt/*
ENTRYPOINT /srv/app/web.py
