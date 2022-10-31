FROM openjdk:8
EXPOSE 8080
ADD target\jdjd-integration.jar jdjd-integration.jar
ENTRYPOINT ["java", "-jar", "jdjd-integration.jar"]