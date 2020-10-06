# JBoss EAP Docker #

[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/jboss-eap.svg)](https://hub.docker.com/r/scalified/jboss-eap)
[![](https://images.microbadger.com/badges/image/scalified/jboss-eap.svg)](https://microbadger.com/images/scalified/jboss-eap)
[![](https://images.microbadger.com/badges/version/scalified/jboss-eap.svg)](https://microbadger.com/images/scalified/jboss-eap)

## Description

This repository is used for building a [**Docker**](https://www.docker.com) image containing [**JBOSS EAP**](https://developers.redhat.com/products/eap/overview)

## Dockerhub

**`docker pull scalified/jboss-eap:<version>`**

## Version

| Version                 | JDK | JBoss EAP |
|-------------------------|-----|-----------|
| **7.3.0**, **latest**   | 11  | 7.3.0     |
| **7.3.0-zulu-openjdk    | 11  | 7.3.0     |
| **7.2.0**               | 11  | 7.2.0     |
| **7.2.0-zulu-openjdk**  | 11  | 7.2.0     |
| **7.1.0**               | 1.8 | 7.1.0     |
| **7.1.0-zulu-openjdk**  | 1.8 | 7.1.0     |
| **7.0.0**               | 1.8 | 7.0.0     |
| **6.4.0**               | 1.8 | 6.4.0     |

## Volumes

* **`/opt/jboss/standalone`**

* **`/root/.ssh`**

## Additional JBoss EAP Content

* Oracle JDBC v8 driver

### How-To

#### Building Docker Image

1. Download [**Official JBOSS EAP**](https://developers.redhat.com/products/eap/download/) archive (You must have a registered [**RedHat Developers Account**](https://developers.redhat.com))
2. Issue the command:
   **`docker build . -t <tag> --build-arg JBOSS_ARCHIVE_NAME=<downloaded archive name>`**

#### Running Docker Image

* Pulling from **Dockerhub**:  
  `docker run -it scalified/jboss-eap:<version> /bin/sh`

* Launching the built image with <tag> tag:  
  `docker run -it <tag> /bin/sh`

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* <a href="mailto:info@scalified.com?subject=[JBoss EAP Docker Image]: Proposals And Suggestions">Scalified Support</a>

