# Use OpenJDK 21 slim image
FROM eclipse-temurin:21-jdk-jammy

# Copy shaded JAR from Maven build
COPY target/my-app-1.0-SNAPSHOT-shaded.jar /app/my-app.jar

# Expose application port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java","-jar","/app/my-app.jar"]
