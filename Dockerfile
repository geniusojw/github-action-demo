FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
EXPOSE 8080

COPY --from=build /libs/github-action-demo-*-SNAPSHOT.jar /github-action.jar
CMD java -jar github-action-demo-0.0.1-SNAPSHOT.jar