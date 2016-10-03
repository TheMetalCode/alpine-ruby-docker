FROM alpine:latest
MAINTAINER Jason Hagglund <hagglundized@gmail.com>

ENV BASE_PACKAGES bash wget curl nano git
ENV BUILD_PACKAGES build-base curl-dev libffi-dev imagemagick imagemagick-dev libxml2-dev libxslt-dev libstdc++ postgresql-dev tzdata pcre-dev linux-headers
ENV RUBY_PACKAGES ruby ruby-dev ruby-io-console ruby-bundler ruby-json nodejs yaml ruby-irb ruby-rake ruby-bigdecimal

RUN apk update && apk upgrade && \
    apk add $BASE_PACKAGES && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES

RUN rm -rf /var/cache/apk/*
