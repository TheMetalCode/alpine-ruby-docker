FROM alpine:latest
MAINTAINER Jason Hagglund <hagglundized@gmail.com>

ENV BASE_PACKAGES bash wget curl nano git
ENV BUILD_PACKAGES build-base curl-dev libffi-dev imagemagick imagemagick-dev libxml2-dev libxslt-dev postgresql-dev
ENV RUBY_PACKAGES ruby ruby-dev ruby-io-console ruby-bundler ruby-json yaml nodejs

RUN apk update && apk upgrade && \
    apk add $BASE_PACKAGES && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*
