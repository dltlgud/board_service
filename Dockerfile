FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY build/libs/board_service-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8002
ENV JAVA_OPTS="-Xmx256m -Xms128m"
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
