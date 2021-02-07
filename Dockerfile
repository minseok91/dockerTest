# 도커 빌드, 런 커맨드
# docker build -t docker-image .
# docker run -it -p 8080:8080 docker-image

FROM gradle:6.7.1-jdk8 AS build
COPY —-chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build

FROM openjdk:8-jdk-alpine
COPY —-from=build /home/gradle/src/build/libs/*.jar /app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]