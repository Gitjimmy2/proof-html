FROM ruby:3.0-alpine

RUN apk --no-cache add \
    build-base \
    curl \
    ruby-dev
RUN gem install html-proofer -v 3.19.4

COPY entrypoint.sh proof-html.rb /

ENTRYPOINT ["/entrypoint.sh"]
