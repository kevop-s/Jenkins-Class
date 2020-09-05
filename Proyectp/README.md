# Construccion de las imagenes 

``` dockerfile
docker build -t node-mail:back serverlessFormB/

docker build -t node-mail:front serverlessFormF/
 ```

# Servidor back

``` dockerfile

docker run -itd --name npm-back -p 4444:4444 node-mail:back

docker run -itd --name npm-front -p 3000:3000 node-mail:front

````
