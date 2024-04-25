FROM ruby:3.2

ARG RUBY_ENV


# throw errors if Gemfile has been modified since Gemfile.lock
RUN if [[ "${RUBY_ENV}" = 'production' ]]; then bundle config --global frozen 1; fi

WORKDIR /app
COPY . /app

COPY Gemfile Gemfile.lock* ./
RUN bundle install

EXPOSE 3000
CMD ["ruby", "apps.rb"]
