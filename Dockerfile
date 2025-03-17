# Stage 1: Build the application using Gradle 7 and JDK 17
FROM gradle:7-jdk17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy Gradle build files first for caching dependencies
COPY settings.gradle build.gradle gradle/ ./

# Copy the source code
COPY src ./src

# Build the application
RUN gradle build --no-daemon

# Stage 2: Run the application with JDK 17
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "app.jar"]
