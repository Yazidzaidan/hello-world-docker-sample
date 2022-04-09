FROM openjdk:17


##EXPOSE 9090
##ADD target/hello-world-docker-sample.jar hello-world-docker-sample.jar
##ENTRYPOINT [ "java", "-jar", "/hello-world-docker-sample.jar"]


RUN mkdir /app

COPY out/production/HelloWorldDocker/ /app

WORKDIR /app

CMD java Main