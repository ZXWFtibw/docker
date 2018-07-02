FROM java:8-jre-alpine

MAINTAINER Ftibw <ftibw@live.com>

#RUN mkdir /app

WORKDIR /app

COPY harbor-web-0.1.0.jar /app

ENV PARAMS=""

ENTRYPOINT ["sh","-c","java $PARAMS -Djava.security.egd=file:/dev/./urandom -jar /app/harbor-web-0.1.0.jar"]

EXPOSE 9000
