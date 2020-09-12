export JENKINS_HOST_PORT=8080
export JENKINS_CONTAINER=jenkins-server-did
sudo mkdir -p /var/containers/$JENKINS_CONTAINER/var/jenkins_home
sudo chown 1000:1000 -R /var/containers/$JENKINS_CONTAINER

sudo docker run -itd --name $JENKINS_CONTAINER -u root \
        --restart always --privileged \
        -p $JENKINS_HOST_PORT:8080 -p 50000:50000 \
        -v /etc/localtime:/etc/localtime:ro \
        -v /usr/share/zoneinfo:/usr/share/zoneinfo:ro \
        -v /var/containers/$JENKINS_CONTAINER/var/jenkins_home:/var/jenkins_home:z \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $(which docker):/usr/bin/docker \
        -e TZ=America/Mexico_City \
        jenkins/jenkins:lts
