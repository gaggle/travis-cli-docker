FROM ruby:2.6.0-alpine3.8
RUN apk add build-base git ruby-dev
RUN gem install travis -v 1.8.9
RUN mkdir /.travis && chmod -R 777 /.travis
WORKDIR /host
ENTRYPOINT ["travis"]
