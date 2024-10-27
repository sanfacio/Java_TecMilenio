

# Setup Spring Framework 6.1.x
## Setup micrometer 1.13.4

Para descargar y compilar **Spring Framework 6.1.x** desde el código fuente en *GitHub*, te proporciono una guía detallada de los pasos necesarios. Esto es útil si deseas tener control sobre el código fuente o hacer modificaciones específicas. A continuación, te explicaré los pasos:

---

### 1. Clonar el repositorio desde GitHub

Primero, necesitas clonar el repositorio oficial de **Spring Framework** desde *GitHub*. Asegúrate de tener *Git* instalado en tu sistema.

 - Abre una terminal o consola.
 
 - Crea una nueva carpeta en la unidad `c:\`  y navega hacia ella. En este ejemplo, usaremos `c:\spring`
 ###### 
 - Ejecuta el siguiente comando para clonar el repositorio de Spring Framework
 
		git clone https://github.com/spring-projects/spring-framework.git

Este comando descargará el código fuente completo en un directorio llamado `spring-framework`.

### 2. Cambiar a la rama o etiqueta de la versión 6.1.x
Una vez que el repositorio esté clonado, debes navegar a la versión exacta de Spring Framework 6.1.x que deseas compilar.

- Entra en el directorio del proyecto clonado:

		cd spring-framework

######
- Lista las etiquetas (tags) disponibles para ver las versiones:

		git tag

Busca una etiqueta que corresponda a la versión 6.1.x, por ejemplo `v6.1.0` o cualquier versión posterior de la serie 6.1.x.

- Cambia a la etiqueta de la versión que te interesa. Por ejemplo, para la versión 6.1.0

		git checkout v6.1.0

Esto asegurará que estés trabajando con la versión específica 6.1.0 del framework.


### 3. Compilar el proyecto con Gradle

El proyecto de Spring Framework usa **Gradle** como sistema de construcción, por lo que necesitarás tenerlo instalado en tu máquina. 
- Para verificar si Gradle está instalado, ejecuta:

		gradle -v

Una vez tengas Gradle configurado, puedes proceder a compilar el proyecto.

- En el directorio raíz del proyecto Spring Framework, ejecuta:

		gradlew build

Este comando ejecutará el proceso de compilación y descargará todas las dependencias necesarias. También ejecutará las pruebas del proyecto, por lo que puede tardar un poco en completarse. Si no deseas ejecutar las pruebas, puedes añadir la opción  -x test:

		gradlew build -x test

Una vez que la compilación haya finalizado, los archivos `.jar` generados estarán disponibles en el subdirectorio `build/libs` de cada subproyecto de Spring (por ejemplo, `spring-core`, `spring-context`, etc.).

### 4. Instalar los archivos `.jar` localmente
Si deseas instalar los archivos `.jar` de Spring en tu repositorio local de Maven para que puedan ser utilizados por otros proyectos, puedes ejecutar el siguiente comando:

		gradlew install

Este comando instalará los archivos `.jar` en tu repositorio local de Maven, lo que te permitirá referenciarlos desde otros proyectos Maven.

### 5. Publicar los `.jar` (opcional)

Si después de compilar quieres usar estos archivos `.jar` en un repositorio remoto o privado para compartirlos con otros, puedes configurar la publicación de los artefactos en un servidor Maven privado como Nexus o Artifactory.

--- 

## Instalación de las librerías de micrometer

### 1. Clonar el repositorio desde GitHub

Primero, necesitas clonar el repositorio oficial de **Spring Framework** desde *GitHub*. Asegúrate de tener *Git* instalado en tu sistema.

 - Abre una terminal o consola.
 
 - Crea una nueva carpeta en la unidad `c:\`  y navega hacia ella. En este ejemplo, usaremos `c:\spring`
 ###### 
 - Ejecuta el siguiente comando para clonar el repositorio de Spring Framework
 
		git clone https://github.com/micrometer-metrics/micrometer.git

Este comando descargará el código fuente completo en un directorio llamado `spring-framework`.

### 2. Cambiar a la rama o etiqueta de la versión 1.x.x

Una vez que el repositorio esté clonado, debes navegar a la versión exacta de Spring Framework 1.x.x que deseas compilar.

- Entra en el directorio del proyecto clonado:
    
    ```
    cd micrometer
    ```
    

- Lista las etiquetas (tags) disponibles para ver las versiones:
    
    ```
    git tag
    ```
    

Busca una etiqueta que corresponda a la versión 6.1.x, por ejemplo `v1.13.6` o cualquier versión posterior de la serie 1.13.x.

- Cambia a la etiqueta de la versión que te interesa. Por ejemplo, para la versión 1.13.6
    
    ```
    git checkout v1.13.6
    ```
    

Esto asegurará que estés trabajando con la versión específica 1.13.x del framework.


### 3. Compilar el proyecto con Gradle

El proyecto de Spring Framework usa **Gradle** como sistema de construcción, por lo que necesitarás tenerlo instalado en tu máquina. 
- Para verificar si Gradle está instalado, ejecuta:

		gradle -v

Una vez tengas Gradle configurado, puedes proceder a compilar el proyecto.

- En el directorio raíz del proyecto Spring Framework, ejecuta:

		gradlew build

Este comando ejecutará el proceso de compilación y descargará todas las dependencias necesarias. También ejecutará las pruebas del proyecto, por lo que puede tardar un poco en completarse. Si no deseas ejecutar las pruebas, puedes añadir la opción  -x test:

		gradlew build -x test

Una vez que la compilación haya finalizado, los archivos `.jar` generados estarán disponibles en el subdirectorio `build/libs` de cada subproyecto de Spring (por ejemplo, `spring-core`, `spring-context`, etc.).

---

### Referencias útiles:

- [Repositorio oficial de Spring Framework en GitHub](https://github.com/spring-projects/spring-framework)
- [Documentación de Spring Framework](https://docs.spring.io/spring-framework/docs/current/reference/html/)


