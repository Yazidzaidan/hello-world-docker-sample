FROM openjdk:17

RUN mkdir /app

ENV EnvVar="This is a Hello world docker sample"

COPY out/production/HelloWorldDocker/ /app

WORKDIR /app

CMD java Main