FROM ubuntu:16.04

RUN \
  # Update repository.
  apt-get update && \

  # Install OpenJDK 8.
   apt-get install -y openjdk-8-jdk && \

  # Install Oracle JDK 8.
  # apt-get install -y software-properties-common python-software-properties && \
  # apt-add-repository -y ppa:webupd8team/java && \
  # apt-get update && \
  # yes | apt-get install -y oracle-java8-installer && \
  # apt install oracle-java8-set-default && \

  # Clean up.
  apt-get clean

COPY /build/libs/TestBug.jar /app/TestBug.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/TestBug.jar"]
