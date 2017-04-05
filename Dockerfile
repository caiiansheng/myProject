FROM ubuntu

ENV JAVA_VERSION 8u31
ENV BUILD_VERSION b13

MAINTAINER  cailiansheng
RUN echo "copy files..."
COPY target/photoshop-0.0.1-SNAPSHOT.jar /tmp/photoshop-0.0.1-SNAPSHOT.jar
RUN ls /tmp/
CMD ["sleep","3000"]
# Upgrading system
RUN apt-get update -y
RUN apt-get -y install wget

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install oracle-java8-installer
RUN apt-get install oracle-java8-set-default

EXPOSE 8080
