# JBoss EAP Docker Image

[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/Scalified/helm-jboss/blob/master/LICENSE)
[![Docker Pulls](https://img.shields.io/docker/pulls/scalified/jboss-eap.svg)](https://hub.docker.com/r/scalified/jboss-eap)

## Overview

Docker image and build instructions for [**JBoss EAP**](https://developers.redhat.com/products/eap/overview)

## Docker Hub

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

## Environment

* `JBOSS_HOME=/opt/jboss`

## Volumes

* `$JBOSS_HOME/standalone`

## Configuration

Configuration files in the `$JBOSS_HOME/standalone/configuration` directory can be overridden by mounting corresponding files into the `/etc/jboss/configs` directory.
Alternatively, the entire configuration directory can be overridden by mounting it as a whole

### Build

1. Download the official [**JBoss EAP**](https://developers.redhat.com/products/eap/download/) ZIP archive into the `jboss` directory.
    *(Requires a registered [RedHat Developers Account](https://developers.redhat.com))*
2. *(Optional)* Place custom JBoss modules inside the `modules` directory
3. Run the build command:
   ```bash
   docker build . -t scalified/jboss-eap:<tag> \
       --build-arg JBOSS_ARCHIVE=jboss/jboss-eap-7.4.0.zip \
       --build-arg BASE_IMAGE=azul/zulu-openjdk-debian:11
     ```

---

**Made with ❤️ by [Scalified](http://www.scalified.com)**

