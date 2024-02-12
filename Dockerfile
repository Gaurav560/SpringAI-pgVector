# Build stage
FROM maven:3.8.4-openjdk-17 as build
WORKDIR /app
# Copy the project files to the container
COPY src ./src
COPY pom.xml ./
# Build the application
RUN mvn clean package -DskipTests

# Package stage
FROM amazoncorretto:17-alpine-jdk
COPY --from=build /app/target/spring-ai.jar spring-ai.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-ai.jar"]
