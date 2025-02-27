try to get jp's portfolio console up  with vue


### Linkedin deployments with Docker Notes:
[Build a Docker image with a setup/config file | LinkedIn Learning](https://www.linkedin.com/learning/running-spring-boot-in-production/build-a-docker-image-with-a-setup-config-file?autoSkip=true&resume=false&u=2045532)

```Dockerfile
FROM openjdk:8-jdk-alpine  
MAINTAINER aaron.com  
# Security concern with running an app inside a docker container as root. exploit discovered that allows root user in container to inject an app with root priveleges that can let the attacker exit the container and have access to the host  
RUN addgroup -S mygroup && adduser -S myuser -G mygroup  
USER myuser:mygroup  
ARG JAR_FILE=build/libs/SpringBootProdApplication-0.0.1-SNAPSHOT.jar  
COPY ${JAR_FILE} app.jar  
ENTRYPOINT ["java", "-jar", "app.jar"]
```