FROM openjdk:8-alpine
MAINTAINER "Nikita Krivitski" <hax2033@gmail.com>
ADD ./build/libs/spring-boot-k8s-hello-world-0.0.1-SNAPSHOT.jar /greeting.jar
RUN sh -c 'touch /greeting.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/greeting.jar"]
