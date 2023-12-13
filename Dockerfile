FROM openjdk:8-jdk-alpine
EXPOSE 8089
ADD target/eventproject-1.0.jar eventproject-1.0.jar
ENTRYPOINT ["java","-jar","/eventproject-1.0.jar"]