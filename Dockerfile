FROM ruby:2.4-alpine
MAINTAINER Patricio Pérez <pperez@boaboa.org>

ENV WHENEVER_VERSION 0.9.7

RUN apk update \
  && apk add curl \
  && gem install whenever -v $WHENEVER_VERSION

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

WORKDIR "/app"

CMD ["crond", "-f"]
