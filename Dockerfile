FROM ruby:2.2.0
RUN mkdir app
WORKDIR app
ADD . /app
CMD bundle install && bundle exex puma config.ru -p 9090 -e production