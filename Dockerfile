FROM openjdk:8-jdk-alpine
EXPOSE 8089
ADD target/eventsproject-1.0.jar eventsproject-1.0.jar.jar
ENTRYPOINT ["java", "-jar", "eventsproject-1.0.jar"]
ENV IMAGE_NAME="eventsproject"