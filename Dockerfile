FROM ruby:2.3-alpine

ENV HOME /usr/src/app/
WORKDIR $HOME

ADD Gemfile* server.rb $HOME

RUN apk --update add libstdc++ g++ musl-dev make \
 && bundle install --deployment \
 && apk del g++ musl-dev make

CMD ["ruby", "server.rb"]
