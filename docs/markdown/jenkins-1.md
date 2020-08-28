## Introducción a DevOps


## Introducción

### Qué es DevOps


DevOps ofrece frameworks de procesos aumentados con herramientas de código abierto para integrar todas las fases del ciclo de vida de la aplicación y garantizar que funcionen como una unidad. Ayuda a alinear y automatizar el proceso en las fases de desarrollo, prueba, implementación y soporte. Incluye las mejores prácticas, como repositorios de código, automatización de compilación, implementación continua y otros.


La cultura DevOps es un conjunto de prácticas que reducen las barreras entre los desarrolladores, que quieren innovar y entregar más rápido, por un lado y, por otro lado, las operaciones, que quieren garantizar la estabilidad de los sistemas de producción y la calidad de los cambios al sistema.


- Despliegues más frecuentes mediante la integración y la entrega continua  
- Monitoreo de la infraestructura y aplicaciones  
- Cultura de la colaboración (Equipos multidiciplinarios ) 
- Uso de metodologías ágiles de desarrollo 


#### Ventajas


### Ciclo de vida en Devops
![Ciclo de vida](markdown/images/DevOpsLC.png)


## Integración continua (CI) 
La integración continua es una práctica de desarrollo de software donde los miembros de un equipo integran su trabajo con frecuencia. Cada integración se verifica mediante una compilación automatizada (se incluye una fase de  prueba) para detectar errores de integración lo más rápido posible.


### Implementación 
Es necesario utilizar un Source Code Manager (SCM) donde todos los miembros del equipo puedan integrar pequeños cambios (commit)  en el código. Cada miembro deberá generar cambios diarios, iterarivos e incrementales.  
Los cambios individuales deberán integrarse con los demás cambios del equipo de forma óptima y rápida. 


## Entrega continua (CD)
En esta pracrica se busca la aplicación automática en uno o más entornos que no son de producción, lo que se denomina (QA/Preprod). El CD a menudo comienza con un paquete de aplicación preparado por CI, que se instalará de acuerdo con una lista de tareas automatizadas. Estas tareaspueden ser de cualquier tipo: descomprimir, detener y reiniciar el servicio, copiar archivos, reemplazar la configuración, etc. La ejecución de pruebas funcionales y de aceptación también se puede realizar durante el proceso de CD.


![cidi-mapa](markdown/cidi-mapa.png)


## Implementación continua 

La implementación continua es una extensión de CD, es un proceso que automatiza toda la canalización de CI / CD desde el momento en que el desarrollador confirma su código para la implementación en producción a través de todos los pasos de verificación. 

Debe tener en cuenta todos los pasos para restaurar la aplicación en caso de un problema de producción, alternancia de características (o indicadores de características), desactivar y activar características bajo demanda.


Otra técnica consiste en utilizar una infraestructura de producción blue-green, que consta dedos entornos de producción, uno azul y otro verde. Primero implementamos en el entorno azul, luego en el verde; esto asegurará que no se requiera tiempo de inactividad: