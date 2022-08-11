FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY ./target/adminspringboot.jar adminspringboot.jar
ENTRYPOINT ["java","-jar","/adminspringboot.jar", "&"]
