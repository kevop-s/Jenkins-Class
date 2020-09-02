# Introduccion a Jenkins

Kevin GómezAnalista de arquitectura y desarrollo tecnológic Global Hitss 

Carlos Reyes Cloud Enginner jr Wundertec 

[Github](https://github.com/kevop-s/Jenkins-Class) 


### Qué es DevOps


DevOps ofrece frameworks de procesos aumentados con herramientas de código abierto para integrar todas las fases del ciclo de vida de la aplicación y garantizar que funcionen como una unidad. Ayuda a alinear y automatizar el proceso en las fases de desarrollo, prueba, implementación y soporte. Incluye las mejores prácticas, como repositorios de código, automatización de compilación, implementación continua y otros.


La cultura DevOps es un conjunto de prácticas que reducen las barreras entre los desarrolladores, que quieren innovar y entregar más rápido, por un lado y, por otro lado, las operaciones, que quieren garantizar la estabilidad de los sistemas de producción y la calidad de los cambios al sistema.


# Principios

- Desarrolle y pruebe contra sistemas similares a la producción
- Implemente con procesos confiables y repetibles
- Monitorear y validar la calidad operativa
- Amplifica los bucles de retroalimenta


- Despliegues más frecuentes mediante la integración y la entrega continua  
- Monitoreo de la infraestructura y aplicaciones  
- Cultura de la colaboración (Equipos multidiciplinarios ) 
- Uso de metodologías ágiles de desarrollo 



### Ciclo de vida en Devops
![Ciclo de vida](markdown/images/DevOpsLC.png)


## Fases del proceso  
- La planificación y priorización de funcionalidades 
- Desarrollo ágil 
- Integración y entrega continuas 
- Pruebas continuas 
- Despliegue continuo 
- Monitoreo continuo 


## Integración continua (CI) 
La integración continua es una práctica de desarrollo de software donde los miembros de un equipo integran su trabajo con frecuencia. Cada integración se verifica mediante una compilación automatizada (se incluye una fase de  prueba) para detectar errores de integración lo más rápido posible.


### Implementación 
Es necesario utilizar un Source Code Manager (SCM) donde todos los miembros del equipo puedan integrar pequeños cambios (commit)  en el código. Cada miembro debágenerar cambios diarios, iterarivos e incrementales.  
Los cambios individuales deberán integrarse con los demás cambios del equipo de forma óptima y rápida. 


## Entrega continua (CD)
En esta pracrica se busca la aplicación automática en uno o más entornos que no son de producción, lo que se denomina (QA/Preprod). El CD a menudo comienza con un paquete de aplicación preparado por CI, que se instalará de acuerdo con una lista de tareas automatizadas. Estas tareaspueden ser de cualquier tipo: descomprimir, detener y reiniciar el servicio, copiar archivos, reemplazar la configuración, etc. La ejecución de pruebas funcionales y de aceptación también se puede realizar durante el proceso de CD.


![cidi-mapa](markdown/cidi-mapa.png)


## Despliegue continuo

Es una extensión de CD, es un proceso que automatiza toda la canalización de CI / CD desde el momento en que el desarrollador confirma su código para la implementación en producción a través de todos los pasos de verificación. 

Debe tener en cuenta todos los pasos para restaurar la aplicación en caso de un roblema de producción, alternancia de características (o indicadores de caractesticas), desactivar y activar características bajo demanda.


## Herramientas 
- Plan 
	- Trello  
	- Jira 
	- Teams, slack 
- Desarrollo 
	- Git ( gitlab, bitbucket, github) 
	- Maven, grunt, Gradle
	- Postman


 
- Integración continua  
	- Jenkins. Travis, Circlecl 
	- Docker, Vgrant 
- Pruebas 
	- Sonar cube  
	- Junit 
	- Selenium


 
- Despliegue continuo 
	- Puppet, chef 
	- Terraform 
	- Kubernetes, Openshift 
	- Cloud Services (AWS, AZURE, GCP )  
- Monitoreo continuo  
	- Nagios, Zabbix, Datadog 
	- Prometheus, Grafana 
	- ELK 


## Estrategias de Deployment

Una vez que los procesos y la infraestructura están en su lugar para implementaciones rápidas, entonces es posible comenzar a usar estrategías de implementación para mitigar cualquier riesgo de las actualizaciones, evaluar la efectividad de la funcionalidad y proporcionar un campo de pruebas en la vida real para nuevas ideas. 


### Roolling deployment

En una implementación continua, la nueva versión de una aplicación reemplaza gradualmente a la anterior. La implementación real ocurre durante un período de tiempo. Durante ese tiempo, las versiones nuevas y antiguas coexistirán sin afectar la funcionalidad o la experiencia del usuario. Este proceso facilita la reversión de cualquier componente nuevo incompatible con los componentes antiguos. 


![rolling](https://res.cloudinary.com/practicaldev/image/fetch/s--RbA0NHA6--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/divuxihkun2p186c9mye.png) 


## Bluegreen 

Tener dos entornos idénticos (azul y verde ) , frente a los cuales hay un enrutador o equilibrador de carga que le permite dirigir el tráfico al entorno adecuado. 

Una nueva compilación pasa por todos los entornos de la canalización de CI / CD. Para la producción, hay dos entrnos idénticos (azul y verde), pero solo uno est activo. El cambio se implementa en el entorno inactivo en producción; Una vez que se verifica ese entorno, se cambia el enrutador y el tráfico se traslada al entorno actualizado. 


![ Blue green](https://res.cloudinary.com/practicaldev/image/fetch/s--fJ4tYKdy--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/78dk41w8qmuy9f9pvrf6.png) 


## Canary deployment  

Se implementan actualizaciones para pequeños porcentajes de usuarios y aumentar ese número de forma segura. Una versión canary es similar a una implementación azul-verde, excepto que la versión inicial solo va a un subconjunto de usuarios dentro del entorno a medida que se recopilan información de los usuarios, ese subconjunto se puede aumentar gradualmente hasta que todos los usuarios finalmente se cambien. 


![canary](https://res.cloudinary.com/practicaldev/image/fetch/s--7PmOiuG9--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/zvf9rbd1x38umph98zro.png) 


## Qué es jenkins  
Jenkins es un servidor de automatización de código abierto. Construido con Java, proporciona más de 1700 complementos para admitir la automatización el flujo de trabajo de desarollo.  


- Gestion de controladores de versiones 
- Construcción y compilación de proyectos 
- Analisis estatico de código  
- Ejecución de pruebs  
- Despliegue de proyectos 
 


## Componentes de Jenkins

![Arquitectura](markdown/images/JenkinsArquitectura.png)


![Arquitectura](https://ricardogeek.com/wp-content/uploads/2018/07/Untitled-Diagram.png)



## Master  

Un Master de Jenkins es el sistema de control principal para una instancia de Jenkins. Tiene acceso completo a toda la configuración y opciones de Jenkins y a la lista completa de trabajos.  
Es la ubicación predeterminada para ejecutar trabajos si no se especifica otro sistema. Sin embargo, no está diseñado para ejecutar tareas pesadas. 


 
- Planificar los trabajos 
- Envia los trabajos a los agentes para la ejecución  
- Monitorea a los agentes  
- Recolecta y presenta los resultados de los trabajos   


## Nodo  

Nodo Nodo es el término genérico que se utiliza en Jenkins  para referirse a cualquier sistema que pueda ejecutar trabajos de Jenkins. Esto cubre tanto a los maestros como a agentes, y a veces se usa en lugar de esos términos. Además, un nodo puede ser un contenedor, como uno para Docker. Un nodo maestro siempre está presente en cualquier instalación de Jenkins. 


## Agente 

Tradicionalmente en Jenkins, esto se refiere a cualquier sistema no maestro. La idea es que estos sistemas sean administrados por el sistema maestro y asignados según sea necesario, o según se especifique, para manejar el procesamiento de los trabajos individuales. 


Por ejemplo, podríamos asignar diferentes agentes para realizar diferentes compilaciones para diferentes versiones de SO, o podríamos asignar múltiples agentes para que se ejecuten en paralelo para realizar pruebas. 


## Ejecutor  

un ejecutor es solo un espacio en el que ejecutar un trabajo en un nodo . Un nodo puede tener cero o más ejecutores. El número de ejecutores define cuántos trabajos simultáneos se pueden ejecutar en ese nodo. Cuando el maestro canaliza trabajos a un nodo en particular, debe haber un espacio de ejecutor disponible para que el trabajo se procese inmediatamente. De lo contrario, esperará hasta que haya un ejecutor disponible. 


## Trabajo o job 

Se refiere a una tarea ejecutable administrada y monitoreada por jenkins.  


# Instalació de Jenkins  

- Plataformas:  
- Máquina virtual JAVA ( WAR file)  
- Linux, MacOS, Windows 


## Docker 

La tecnología Docker usa el kernel de Linux y las funciones de este, como Cgroups y namespaces, para segregar los procesos, de modo que puedan ejecutarse de manera independiente. El propósito de los contenedores es esta independencia: la capacidad de ejecutar varios procesos y aplicaciones por separado para hacer un mejor uso de su infraestructura y, al mismo tiempo, conservar la seguridad que tendría con sistemas separados. 


![Docker vs VM](https://i1.wp.com/www.docker.com/blog/wp-content/uploads/Blog.-Are-containers-..VM-Image-1-1024x435.png?ssl=1)


- Modularidad 
- Control de versiones  y capas 
- Restauración  
- Implementacion rápida 


## Cómo funciona Docker  

![Docker](http://www.arquitectoit.com/images/dockers/arquitectura-docker.jpg) 


## Imagenes  

```console 

FROM jenkins/jenkins:lts  

USER root 

RUN apt-get update && apt-get install -y ruby make more-thing-here  

USER jenkins  

``` 


```console 

docker build 

docker pull 

docker image ls 

``` 


## Contenedores  

``` console 

docker ps 

docker run  

docker start/stop/restart 

docker exec   

```


# Instalación  

[Dockerhub](https://hub.docker.com/u/jenkins?page=1) 

[Github](https://github.com/jenkinsci/docker) 

[Github instalacion](https://github.com/kevop-s/Jenkins) 
