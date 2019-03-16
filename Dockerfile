
FROM openjdk:8-jdk-alpine

LABEL maintainer="abcd@gmail.com"

# Add a volume pointing to /tmp

VOLUME /tmp

# Expose port 8080 and 80 to outside this container

EXPOSE 8080

EXPOSE 80

# The application's jar file
ARG JAR_FILE=target/pcf-helloworld-demo-1.0.0.jar

# Add the app jar to container

ADD ${JAR_FILE} pcf-demo.jar

# Run the jar file 

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=80","-jar","/pcf-demo.jar"]

