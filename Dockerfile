ARG BASE_IMAGE=openjdk:11-jdk-buster
FROM ${BASE_IMAGE}

ARG JBOSS_ARCHIVE

LABEL maintainer="Vladyslav Baidak"

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV JBOSS_HOME=/opt/jboss

RUN apt update \
    && apt install -y curl locales unzip

RUN sed -i -e "s/# $LANG/$LANG/" /etc/locale.gen \
    && locale-gen $LANG.UTF-8 \
    && dpkg-reconfigure --frontend=noninteractive locales \
    && update-locale LANG=$LANG

RUN mkdir -p $JBOSS_HOME

COPY $JBOSS_ARCHIVE $JBOSS_HOME

RUN JBOSS_TMP_DIR=$JBOSS_HOME/tmp \
    && unzip -d $JBOSS_TMP_DIR $JBOSS_HOME/$(basename "$JBOSS_ARCHIVE") \
    && rm $JBOSS_HOME/$(basename "$JBOSS_ARCHIVE") \
    && mv $JBOSS_TMP_DIR/*/* $JBOSS_HOME \
    && rm -rf $JBOSS_TMP_DIR

COPY modules $JBOSS_HOME/modules

VOLUME $JBOSS_HOME/standalone

EXPOSE 80 443 8080 8443 9990 9993

COPY entrypoint.sh /
ENTRYPOINT /entrypoint.sh

