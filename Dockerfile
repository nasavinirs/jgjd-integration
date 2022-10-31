FROM openjdk:8
EXPOSE 8080
ADD target/jgjd-integration.jar jgjd-integration.jar
ENTRYPOINT ["java", "-jar", "jgjd-integration.jar"]