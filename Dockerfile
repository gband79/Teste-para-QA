FROM alpine:3.2
# Update and install base packages
RUN apk update && apk upgrade && apk add bash
# Install ruby and ruby-bundler
RUN apk add ruby ruby-bundler
# Clean APK cache
RUN rm -rf /var/cache/apk/*
RUN mkdir /usr/app
WORKDIR /usr/app
COPY Gemfile /usr/app/
COPY Gemfile.lock /usr/app/
RUN bundle install
COPY . /usr/app