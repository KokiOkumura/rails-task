FROM ruby:2.6

RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y nodejs yarn

WORKDIR /rails-task

COPY Gemfile Gemfile.lock /rails-task//
RUN bundle install
RUN rm -f tmp/pids/server.pid

CMD ["rails","s","-b","0.0.0.0"]