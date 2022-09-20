FROM ruby:2.6.6-alpine

COPY . /app

WORKDIR /app

RUN apk add --update --no-cache build-base libffi-dev graphviz ttf-dejavu
RUN bundle install

ENTRYPOINT ["ruby", "main.rb"]


