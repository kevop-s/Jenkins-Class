# Presentacion Jenkins

Dicha presentacion esta diseñada con el uso de la herramienta [Revealjs](https://revealjs.com/), a continuación se muestra el proceso de despliegue.

## Despliegue de contenedor Revealjs

Configuración de directorios y archivos para nginx.

```
RJS_CONTAINER=revealjs-jenkins
RJS_DOMAIN=revealjs-jenkins.com
mkdir -p /var/containers/$RJS_CONTAINER/{var/www/html/markdown/images,etc/nginx/conf.d}
echo "127.0.0.1 $RJS_DOMAIN" >> /etc/hosts
git clone https://github.com/kevop-s/Jenkins-Class.git /opt/Jenkins-Class
cp -rf /opt/Jenkins-Class/docs/conf/* /var/containers/$RJS_CONTAINER/etc/nginx/conf.d
cp -rf /opt/Jenkins-Class/docs/markdown/* /var/containers/$RJS_CONTAINER/var/www/html/markdown
cp -rf /opt/Jenkins-Class/docs/index.html /var/containers/$RJS_CONTAINER/var/www/html/
```

Despliegue de reveal

```
docker run -itd --name $RJS_CONTAINER \
    -p 80:80 \
    -p 443:443 \
    -v /etc/localtime:/etc/localtime:ro \
    -v /usr/share/zoneinfo:/usr/share/zoneinfo:ro \
    -v /var/containers/$RJS_CONTAINER/var/www/html/index.html:/var/www/html/index.html:z \
    -v /var/containers/$RJS_CONTAINER/var/www/html/markdown:/var/www/html/markdown:z \
    -v /var/containers/$RJS_CONTAINER/var/www/html/markdown/images:/var/www/html/markdown/images:z \
    -v /var/containers/$RJS_CONTAINER/etc/nginx/conf.d:/etc/nginx/conf.d:z \
    -e TZ=America/Mexico_City \
    kevopsoficial/revealjs
```

Para comenzar a visualizar la presentación visitar http://revealjs-jenkins.com