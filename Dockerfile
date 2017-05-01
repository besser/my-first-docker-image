# Base image from ubuntu:trusty
FROM ubuntu:trusty

# File Author
MAINTAINER Roberto Besser <rmbesser@gmail.com>

# Run as root
USER root

# Update repository and install add-apt-repository
RUN apt-get update

# Install wget
RUN apt-get install wget -y

# Create '/opt/tomcat' directory
RUN mkdir -p /opt/tomcat

# Download TOMCAT and extract file to '/opt/tomcat' directory
RUN wget -qO- http://ftp.unicamp.br/pub/apache/tomcat/tomcat-9/v9.0.0.M20/bin/apache-tomcat-9.0.0.M20.tar.gz | tar xvz -C /opt/tomcat

# Default command
CMD bash
