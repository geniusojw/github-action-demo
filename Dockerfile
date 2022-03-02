FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
EXPOSE 8080
CMD ["./mvnw", "clean", "package"]
#ARG JAR_FILE_PATH=build/libs/github-action-demo-*-SNAPSHOT.jar
#COPY ${JAR_FILE_PATH} github-action-demo.jar
COPY /build/libs/github-action-demo-*.jar /github-action-demo.jar
ENTRYPOINT ["java", "-jar", "github-action-demo.jar"]
