FROM openjdk:17-jdk-slim
LABEL authors="don.baton"
WORKDIR /app
ARG APP_VERSION
COPY target/template-${APP_VERSION}.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar", "--spring.profiles.active=${SPRING_PROFILES_ACTIVE}"]