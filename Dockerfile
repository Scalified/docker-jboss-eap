FROM scalified/debian-oraclejdk:latest

MAINTAINER Vladyslav Baidak

ARG JBOSS_ARCHIVE_NAME

ENV JBOSS_HOME=/opt/jboss

ENV SSH_DIR=/root/.ssh

RUN apt-get install unzip

RUN mkdir -p $JBOSS_HOME

COPY $JBOSS_ARCHIVE_NAME $JBOSS_HOME

RUN JBOSS_TMP_DIR=$JBOSS_HOME/tmp \
	&& unzip -d $JBOSS_TMP_DIR $JBOSS_HOME/$JBOSS_ARCHIVE_NAME \
	&& rm $JBOSS_HOME/$JBOSS_ARCHIVE_NAME \
	&& mv $JBOSS_TMP_DIR/*/* $JBOSS_HOME \
	&& rm -rf $JBOSS_TMP_DIR

COPY modules $JBOSS_HOME/modules

VOLUME $JBOSS_HOME/standalone

EXPOSE 80 443 8080 8443 9990 9993

ENTRYPOINT $JBOSS_HOME/bin/standalone.sh

RUN mkdir -p $SSH_DIR

VOLUME $SSH_DIR

