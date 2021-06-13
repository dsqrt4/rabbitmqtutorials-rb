FROM ruby:3.0.1
WORKDIR /app
COPY ./lib/rabbitmqtutorials/version.rb /app/lib/rabbitmqtutorials/
COPY ./rabbitmqtutorials.gemspec /app/
COPY ./Gemfile ./Gemfile.lock /app/
COPY ./Rakefile /app/
RUN bundle install
COPY . ./
RUN bundle exec rake install
CMD ["tail", "-f", "/dev/null"]
