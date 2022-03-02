FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
WORKDIR /root
COPY build/libs/github-action-demo-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD java -jar github-action-demo-0.0.1-SNAPSHOT.jar