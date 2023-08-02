# API de Películas

Esta es una aplicación REST API desarrollada con Spring Boot que te permite interactuar con una base de datos de películas. La API proporciona diferentes endpoints que te permiten realizar las siguientes acciones:

- Obtener la lista de todas las películas en la base de datos.
- Ver detalles de una película específica seleccionándola por su ID.
- Agregar una review a una película específica.

## Endpoints disponibles

A continuación, se detallan los endpoints disponibles en la API:

### Obtener todas las películas

```http
GET /api/v1/movies
```

Este endpoint te devolverá un listado con todas las películas almacenadas en la base de datos.

### Ver detalles de una película

```http
GET /api/v1/movie/{imdbId}

```

Sustituye `{imdbId}` con el ID de IMDb de la película que deseas consultar. Este endpoint te proporcionará todos los detalles de la película correspondiente al ID especificado.

### Agregar una review a una película

```http
POST /api/v1/reviews

```

Este endpoint añadira una review a una pelicula.

**Cuerpo de la solicitud (JSON)**:

```json
{
  "reviewBody": "Texto de la review que se le pone a la película",
  "imdbId": "ID de IMDb de la película"
}
```

## Requisitos previos

Antes de continuar, asegúrate de tener instalado lo siguiente:

- Docker: [Instrucciones de instalación de Docker](https://docs.docker.com/get-docker/)
- Java Development Kit (JDK) 17: [Instrucciones de instalación de JDK 17](https://www.oracle.com/java/technologies/javase-jdk17-downloads.html) o [AdoptOpenJDK](https://adoptopenjdk.net/)

## Cómo usar esta aplicación

Sigue los siguientes pasos para utilizar la aplicación:

# 1. Configura las variables de entorno (Archivo .env)

Antes de compilar la aplicación de Spring con Docker, asegúrate de configurar las variables de entorno necesarias para la conexión a la base de datos de MongoDB. Para hacerlo, crea un archivo .env o utiliza el archivo .env.example en la raíz del proyecto y define las variables requeridas:

```
MONGO_DATABASE="nombre_base_de_datos"
MONGO_USER="usuario"
MONGO_PASSWORD="contraseña"
MONGO_CLUSTER="direccion_mongo"

```

# 2. Construye la aplicación de Spring

Abre una terminal en la raíz del proyecto y ejecuta el siguiente comando para compilar la aplicación de Spring:

```
./mvnw clean package
```

# 3. Construye la imagen Docker

Para construir la imagen Docker, ejecuta el siguiente comando en la raíz del proyecto:

```
docker build -t nombre-de-tu-imagen .
```

# 4. Ejecuta el contenedor

Una vez que la imagen Docker ha sido construida, puedes ejecutar un contenedor basado en esa imagen con el siguiente comando:

```
docker run -p 8080:8080 nombre-de-tu-imagen
```

# 5. Accede a la aplicación

Abre tu navegador web y navega a la siguiente dirección para acceder a la aplicación:

http://localhost:8080

Si todo ha sido configurado correctamente, deberías ver la página de inicio de tu aplicación.

## Cargar datos de prueba en la base de datos

Para que puedas probar la API con datos reales, te proporcionamos un archivo JSON de datos de prueba. Este se encuentra ubicado en la `_data/movies.json`
