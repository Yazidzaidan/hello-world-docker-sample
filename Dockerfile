FROM openjdk:17

RUN mkdir /app

COPY src/ /app

WORKDIR /app

CMD java Main