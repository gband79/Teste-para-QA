FROM alpine
ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler ruby-json ruby-bigdecimal
ENV CHROME chromium chromium-chromedriver
# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
  apk upgrade && \
  apk add $CHROME && \
  apk add $BUILD_PACKAGES && \
  apk add $RUBY_PACKAGES && \
  rm -rf /var/cache/apk/*
RUN mkdir /usr/app
WORKDIR /usr/app
COPY Gemfile /usr/app/
COPY Gemfile.lock /usr/app/
RUN bundle install
COPY features /usr/app/features
COPY cucumber.yaml /usr/app/
ENTRYPOINT cucumber
