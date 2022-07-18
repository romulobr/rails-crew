# syntax=docker/dockerfile:1
FROM node:16-alpine3.16

ARG APP_PATH=/opt/myapp
ARG APP_USER=myappuser
ARG APP_GROUP=myappgroup
ARG APP_USER_UID=7084
ARG APP_GROUP_GID=2001

RUN if [[ $APP_USER_UID != 1000 ]] ; then addgroup -S $APP_GROUP -g $APP_GROUP_GID ; fi
RUN if [[ $APP_USER_UID != 1000 ]] ; then adduser -S -s /sbin/nologin -G $APP_GROUP $APP_USER -u $APP_USER_UID; fi


RUN mkdir $APP_PATH
RUN chown $APP_USER_UID:$APP_GROUP_GID $APP_PATH

COPY --chown=$APP_USER_UID:$APP_GROUP_GID . $APP_PATH/

WORKDIR $APP_PATH
USER $APP_USER_UID

# Configure the main process to run when running the image
CMD ["yarn","start"]