# Use OpenJDK 21
FROM eclipse-temurin:21-jdk-jammy

# Copy the JAR produced by Maven build
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Expose the application port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java","-jar","/app/my-app.jar"]
