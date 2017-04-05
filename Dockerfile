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
RUN apt-get -y install yum

# Downloading & Config Java 8
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm
RUN yum -y install /tmp/jdk-8-linux-x64.rpm
RUN alternatives --install /usr/bin/java jar /usr/java/latest/bin/java 200000
RUN alternatives --install /usr/bin/javaws javaws /usr/java/latest/bin/javaws 200000
RUN alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000

EXPOSE 8080
