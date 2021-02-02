####################################################################
## Dockefile used to build a docker image from your app
## Dockefile ---> Docker Image (1-1) ---> Docker containers (1-N) 
####################################################################

# FROM: defines the base layer for container
FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
# WORKDIR: sets the working directory. Subsequent instructions runs from within this folder
WORKDIR /opt
# ENV: sets an environment variable
ENV PORT 8080
# COPY: copies the jar files from /target into working directory inside the container
COPY target/*.jar /opt/app.jar
# ENTRYPOINT: executes Java application inside the container
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
