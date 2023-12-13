FROM openjdk:8-jdk-alpine
EXPOSE 8089
ADD target/eventsproject-1.0.0.jar eventsproject.jar
ENTRYPOINT ["java", "-jar", "eventsproject.jar"]
ENV IMAGE_NAME="eventsproject"