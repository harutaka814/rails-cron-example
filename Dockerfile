FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y nodejs cron

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

# cronを起動するためのスクリプトをコピー
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

RUN bundle exec whenever --update-crontab
ENTRYPOINT ["entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
