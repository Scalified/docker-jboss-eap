# JBoss EAP Docker #

[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/jboss-eap.svg)](https://hub.docker.com/r/scalified/jboss-eap)
[![](https://images.microbadger.com/badges/image/scalified/jboss-eap.svg)](https://microbadger.com/images/scalified/jboss-eap)
[![](https://images.microbadger.com/badges/version/scalified/jboss-eap.svg)](https://microbadger.com/images/scalified/jboss-eap)

## Description

Docker image and build instructions for the [**JBoss EAP**](https://developers.redhat.com/products/eap/overview)

## Dockerhub

`docker pull scalified/jboss-eap:<version>`

## Versions

| Docker Image Tag                          | JDK Version           | JBoss EAP Version |
|-------------------------------------------|-----------------------|-------------------|
| `7.4.18`, `7.4`, `latest`                 | OpenJDK 11            | 7.4.18            |
| `7.4.18-zulu-openjdk`, `7.4-zulu-openjdk` | Azul Zulu OpenJDK 11  | 7.4.18            |
| `7.4.0`                                   | OpenJDK 11            | 7.4.0             |
| `7.4.0-zulu-openjdk`                      | Azul Zulu OpenJDK 11  | 7.4.0             |
| `7.3.0`                                   | OpenJDK 11            | 7.3.0             |
| `7.3.0-zulu-openjdk`                      | Azul Zulu OpenJDK 11  | 7.3.0             |
| `7.2.0`                                   | OpenJDK 11            | 7.2.0             |
| `7.2.0-zulu-openjdk`                      | Azul Zulu OpenJDK 11  | 7.2.0             |
| `7.1.0`                                   | OpenJDK 1.8           | 7.1.0             |
| `7.1.0-zulu-openjdk`                      | Azul Zulu OpenJDK 1.8 | 7.1.0             |
| `7.0.0`                                   | OpenJDK 1.8           | 7.0.0             |
| `6.4.0`                                   | OpenJDK 1.8           | 6.4.0             |

## Volumes

* `/opt/jboss/standalone`

### How-To

#### Building Docker Image

1. Download [**Official JBoss EAP**](https://developers.redhat.com/products/eap/download/) zip archive (You must have a registered [**RedHat Developers Account**](https://developers.redhat.com)) into `jboss` directory
2. Optional: put additional JBoss modules into `modules` directory
3. Build the image:
   ```bash
   docker build . -t <tag> \
     --build-arg JBOSS_ARCHIVE=jboss/jboss-eap-7.4.0.zip \ # JBoss zip archive path
     --build-arg BASE_IMAGE=azul/zulu-openjdk:11 # base Docker image with JDK (Optional)
     ```

#### Running Docker Image

* Pulling from **Dockerhub**:
  `docker run scalified/jboss-eap:<version>`

* Launching the built image with <tag> tag:
  `docker run <tag>`

## Scalified Links

* [Scalified](http://www.scalified.com)
* [Scalified Official Facebook Page](https://www.facebook.com/scalified)
* <a href="mailto:info@scalified.com?subject=[JBoss EAP Docker Image]: Proposals And Suggestions">Scalified Support</a>

