FROM ubuntu
MAINTAINER  cailiansheng
RUN echo "copy files..."
COPY target/photoshop-0.0.1-SNAPSHOT.jar /tmp/
RUN ls /tmp/
CMD ["sleep","3000"]