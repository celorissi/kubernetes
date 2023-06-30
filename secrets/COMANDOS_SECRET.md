##EXPORTAR VARIAVEIS##
export DOCKER_REGISTRY_SERVER=https://index.docker.io/v1/
export DOCKER_USER=Type your dockerhub username, same as when you `docker login`
export DOCKER_EMAIL=Type your dockerhub email, same as when you `docker login`
export DOCKER_PASSWORD=Type your dockerhub pw, same as when you `docker login`

##Criar secret dockerhub sem arquivo yaml####
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout chave-privada.key -out certificado.crt

#Comando para criar a secret sem manifesto yaml
kubectl create secret tls meu-servico-web-tls-secret --cert=certificado.crt --key=chave-privada.key
