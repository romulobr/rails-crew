# syntax=docker/dockerfile:1
FROM ruby:2.5.9-alpine

ARG APP_PATH=/opt/myapp
ARG APP_USER=myappuser
ARG APP_GROUP=myappgroup
ARG APP_USER_UID=7084
ARG APP_GROUP_GID=2001

RUN apk add --update --no-cache \
        bash \
        build-base \
        nodejs \
        sqlite-dev \
        tzdata \
        build-base  \
        postgresql-dev  \
        zlib-dev  \
        libxml2-dev  \
        libxslt-dev  \
        readline-dev  \
        tzdata \
        curl  \
        tar  \
        wget \
        sudo \
        linux-headers\
        postgresql-dev
RUN gem install bundler
RUN addgroup -S $APP_GROUP -g $APP_GROUP_GID && \
      adduser -S -s /sbin/nologin -G $APP_GROUP $APP_USER -u $APP_USER_UID && \
      mkdir $APP_PATH && \
      chown $APP_USER:$APP_GROUP $APP_PATH


# Add a script to be executed every time the container starts.
COPY ./docker-entrypoint.sh /usr/local/bin/

WORKDIR $APP_PATH
COPY --chown=$APP_USER:$APP_GROUP Gemfile* $APP_PATH/
RUN bundle install

USER $APP_USER

COPY --chown=$APP_USER:$APP_GROUP . $APP_PATH/

# Configure the main process to run when running the image
CMD ["/bin/bash","rails", "server", "-b", "0.0.0.0"]