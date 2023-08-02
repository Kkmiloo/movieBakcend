# Utiliza una imagen base de Java 17
FROM openjdk:17-alpine

# Copia el archivo JAR de tu aplicación en la imagen
COPY target/movies-0.0.1-SNAPSHOT.jar /app.jar

# Expone el puerto en el que tu aplicación escucha (ajústalo al puerto correcto)
EXPOSE 8080

# Comando para ejecutar tu aplicación cuando el contenedor se inicie
CMD ["java", "-jar", "/app.jar"]