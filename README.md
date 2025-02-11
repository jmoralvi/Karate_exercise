# Ejercicio de Tratamiento de Datos en APIS

El ejercicio se desarrolla en tres escenarios relacionados con una tienda de mascotas los cuales se podrán ejecutar individualente o full.

## Principales Tecnologías utilizadas

- **Java**: Lenguaje principal del proyecto.
- **Cucumber**: Para definir los Reporting
- **JUnit**: Framework para la ejecución de pruebas unitarias.
- **Maven**: Herramienta para la gestión de dependencias y construcción del proyecto.

## Estructura del Proyecto

- **`feature/`**: Contiene los archivos `.feature` que describen los escenarios de prueba.
    - `pestore.feature`: Crear usuario y recuperar sus datos
                         Obtener mascotas vendidas y procesar datos
                         Contar nombres de mascotas
    - `pet_counter.feature`: Contar nombres de mascotas (Lanzamiento unitario)
  

- **`java/`**: Contiene clases y configuraciones.
    - `karate-config.js`: Configuración de Variables y entornos.
    - `PetCounter.java`: Método para calcular la cantidad de Nombres de Mascotas.
    - `RunnerTest.java`: Método para ejecutar Test masivamente o clasificados por Tag.

- **`target/sufire-reports`**: Contiene los reportes de los *.features ejecutados
    
## Requisitos

Antes de ejecutar este proyecto, asegúrate de tener instalados los siguientes componentes:

- **Java 8** o superior.
- **Maven** para la gestión de dependencias.
- **karate** para ejecutar los scripts.

## Instalación

1. Clona este repositorio:

   ```bash
   git clone https://github.com/jmoralvi/Karate_exercise.git

2. Ve al directorio del proyecto:
   cd tu-repositorio

3. Instala las dependencias utilizando Maven:
   mvn clean install


## Ejecución de las pruebas
1. Para ejecutar todas las pruebas, puedes utilizar el siguiente comando:
   **mvn test** desde el terminal/command Pront
2. Las pruebas se ejecutan utilizando JUnit y Cucumber. Los reportes en formato HTML y JSON se generan automáticamente en la carpeta target/cucumber.

- HTML report: target/surefire-reports/conduitApp.feature.<N.Feature>.html
- JSON report: target/surefire-reports/conduitApp.feature.<N.Feature>.json


## Tags de pruebas y ejecución Manual
El proyecto está configurado para ejecutar las pruebas marcadas con ciertos tags en los archivos feature.
- Entrando en las features se ejecuta cada escenario
                -pestore.feature
                -pet_counter.feature
- Desde el fichero java RunnerTest se ejecuta uno de los escenarios 


## Agradecimiento
