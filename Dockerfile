# Stage 1: Build with Gradle
FROM gradle:8.5-jdk17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy only necessary files first (for caching efficiency)
COPY settings.gradle build.gradle gradle/ ./
COPY src ./src

# Run the Gradle build
RUN gradle build --no-daemon

# Stage 2: Run the application
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy built JAR from the previous stage
COPY --from=build /app/build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]

