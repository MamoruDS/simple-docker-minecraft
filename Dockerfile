FROM alpine:3.8
RUN apk add --no-cache openjdk8-jre

ENV JAR /app/server.jar
ENV XMS 2048M
ENV XMX 2048M
WORKDIR /app

CMD java -Xmx${XMX} -Xms${XMS} -jar ${JAR}