FROM ubuntu
MAINTAINER  cailiansheng
RUN echo "copy files..."
COPY target/messageUtil-1.0.jar /tmp/
RUN ls /tmp/
CMD ["sleep","3000"]