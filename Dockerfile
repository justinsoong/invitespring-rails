FROM ruby:2.1.10

RUN apt-get update -qq && apt-get install -y nginx build-essential nodejs libmagic-dev libmagic1

ENV PORT 5000

COPY bin/web /app/bin/web
COPY conf/convox.rb /app/config/initializers/convox.rb
COPY conf/nginx.conf /etc/nginx/nginx.conf