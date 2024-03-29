FROM ruby:2.4.2-alpine

ENV RAILS_ROOT=/app \
RAILS_ENV=production

WORKDIR $RAILS_ROOT
COPY . .

RUN apk add --update --no-cache build-base libxml2-dev libxslt-dev mysql-dev tzdata \
    && rm -rf /var/cache/apk/* \
    && mkdir -p $RAILS_ROOT/tmp/pids \
    && bundle install --without development test \
    && apk del build-base \
    && rm -Rf /usr/lib/libmysqld*

CMD exec rails s -b 0.0.0.0
