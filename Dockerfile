FROM eclipse-temurin:11.0.15_10-jdk
VOLUME /tmp
ADD target/dependency/jacocoagent.jar jacocoagent.jar
ADD target/deors-demos-java-pipeline.jar app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar
