FROM openjdk:8-jdk-alpine
# Install curl
RUN yum install -y wget
RUN apt-get update && apt-get install -y curl

WORKDIR /app

# Download the JAR from Nexus (replace with your Nexus details)
RUN curl -o ventproject-1.0.jar -u jenkins-user:admin http:192.168.43.71:8081/repository/mavenreleases/tn/esprit/spring/eventsProject/1.0.0/eventsProject-1.0.0.jar

EXPOSE 8089
CMD ["java", "-jar", "eventsProject-1.0.jar"]
ENV IMAGE_NAME="eventsproject"