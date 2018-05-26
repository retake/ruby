FROM ruby:2.3

MAINTAINER "Matsuura Keita<retake272@gmail.com>"

ARG rubycritic_version=3.4.0
RUN gem install -N rubycritic -v ${rubycritic_version}

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
