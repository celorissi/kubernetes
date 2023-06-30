## EXPORTAR VARIAVEIS 
<p export DOCKER_REGISTRY_SERVER=https://index.docker.io/v1/ >
<p export DOCKER_USER=Type your dockerhub username, same as when you `docker login` >
<p export DOCKER_EMAIL=Type your dockerhub email, same as when you `docker login` >
<p export DOCKER_PASSWORD=Type your dockerhub pw, same as when you `docker login` >

## Criar secret dockerhub sem arquivo yaml 
<p kubectl create secret docker-registry myregistrykey --docker-server=$DOCKER_REGISTRY_SERVER --docker-username=$DOCKER_USER --docker-password=$DOCKER_PASSWORD   --docker-email=$DOCKER_EMAIL >
 
## COMNADO PARA GERAR CERTIFICADOS 
<p openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout chave-privada.key -out certificado.crt >

## Comando para criar a secret sem manifesto yaml 
<p kubectl create secret tls meu-servico-web-tls-secret --cert=certificado.crt --key=chave-privada.key >
