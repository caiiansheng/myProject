FROM ubuntu

MAINTAINER  cailiansheng
RUN echo "copy files..."
COPY target/photoshop-0.0.1-SNAPSHOT.jar /tmp/photoshop-0.0.1-SNAPSHOT.jar
#RUN ls /tmp/
#CMD ["sleep","3000"]
# Upgrading system
#RUN apt-get update -y
#RUN apt-get -y install wget


#RUN rm /var/lib/dpkg/info/oracle-java8-installer*
#RUN apt-get purge oracle-java8-installer* 
#RUN rm /etc/apt/sources.list.d/*java*  
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get -y install oracle-java8-installer

EXPOSE 8080
