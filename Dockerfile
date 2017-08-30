FROM ruby:2.3-alpine

ENV HOME /usr/src/app/
WORKDIR $HOME

ADD . $HOME

RUN apk --update add linux-headers libstdc++ g++ musl-dev make \
 && bundle install --deployment \
 && apk del g++ musl-dev make linux-headers

CMD ["unicorn"]
