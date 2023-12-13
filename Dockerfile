FROM openjdk:8-jdk-alpine


# Download the JAR from Nexus (replace with your Nexus details)
RUN curl -o eventsProjectproject-1.0.jar -u jenkins-user:admin http:192.168.43.71:8081/repository/mavenreleases/tn/esprit/spring/eventsProject/1.0.0/eventsProject-1.0.0.jar

EXPOSE 8089
CMD ["java", "-jar", "eventsProject-1.0.jar"]
ENV IMAGE_NAME="eventsproject"