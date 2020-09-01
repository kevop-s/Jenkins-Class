# Dockerfile 
[Documentacion](https://docs.docker.com/engine/reference/builder/)

## FROM
Imagen base. siempre es necesaria una imagen base

`` FROM ImageName ``

## ENV
Variables de entorno durante la creación del contenedor

`` ENV abc=hello`` 

## RUN 

- RUN <command>  Se ejecuta en e l sell por defecto 
- RUN  ["executable", "param1", "param2"]

```
RUN ["/bin/bash", "-c", "echo hello"]
RUN echo hello
```

# CMD 
El objetivo principal de una CMD es proporcionar valores predeterminados para un contenedor en ejecución. Solo es posble crear una sentencia **CMD**

```
CMD ["/usr/bin/wc","--help"]
CMD wc --help
```

# EXPOSE 

Expone los puertos y el protocolo para la comunicación del contenedor con la red de dcoker. EL puerto predefinido es TCP

```
EXPOSE 80
EXPOSE 5050/udp
```

## COPY 
Copia archivos de la host a la imagen 
COPY testfile.txt /tmp/


## Workdir
Campia de directorio de trabajo 
```WORKDIR /path/to/workdir``` 

## ENTRYPOINT 
´´ENTRYPOINT ["top", "-b"]´´

## Docker run 
[Documentacion](https://docs.docker.com/engine/reference/commandline/run/)

- -t pseudo terminal -tty
- -i mantener flujo STDIN abierto ( interactuar)
- -d Segundo plano 
- --privileged	 ontenedor privilegiado 
-v --volume 
``<dir:host>:<dir:container>:permisos``
- p `puertoHost:puertoContenedor`` 
