# syntax=docker/dockerfile:1
FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /myapp
EXPOSE 3000
ENTRYPOINT ["/bin/bash","docker-entrypoint.sh"]

COPY ./Gemfile /myapp/Gemfile
COPY ./Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list
RUN apt update &&  apt install yarn

# Add a script to be executed every time the container starts.
COPY ./docker-entrypoint.sh /usr/local/bin/

# Configure the main process to run when running the image
CMD ["/bin/bash","rails", "server", "-b", "0.0.0.0"]