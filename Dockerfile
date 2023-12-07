FROM openjdk:12-alpine

COPY target/eventsProject-*.jar /Event.jar

CMD ["java" , "-jar", "/Event.jar"]