FROM ruby AS bundler

#RUN apt-get update && \
#    apt-get -y install build-essential nodejs && \
#    apt-get clean && \
RUN gem install bundler

WORKDIR /app
COPY Gemfile* ./


FROM bundler AS app

RUN bundle install

COPY . .

CMD ["bundle", "exec", "jekyll", "serve"]
