FROM openjdk:8
EXPOSE 8080
COPY . /app
ENTRYPOINT ["java", "-jar", "/app/target/jdjd-integration.jar"]