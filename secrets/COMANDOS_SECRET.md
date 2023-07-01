## Exportar variaveis de ambiente
<p> export DOCKER_REGISTRY_SERVER=https://index.docker.io/v1/ </p>
<p> export DOCKER_USER=Type your dockerhub username, same as when you `docker login` </p>
<p> export DOCKER_EMAIL=Type your dockerhub email, same as when you `docker login` </p>
<p> export DOCKER_PASSWORD=Type your dockerhub pw, same as when you `docker login` </p>

## Verificar arqueivo docker/config.json
<p> cat ~/.docker/config.json </p>

## Converter para Base64 arquivo docker/config.json
<p> base64 ~/.docker/config.json </p>

## Criar Base64 de texto
<p> echo -n 'textopuro' | base64 </p>

## Converter base64 em texto
<p> echo -n 'dGV4dG9wdXJv' | base64 -d </p>

## Criar secret dockerhub sem arquivo yaml 
<p> kubectl create secret docker-registry myregistrykey --docker-server=$DOCKER_REGISTRY_SERVER --docker-username=$DOCKER_USER --docker-password=$DOCKER_PASSWORD   --docker-email=$DOCKER_EMAIL </p>
 
## Comando para gerar certificado + chave privada no linux 
<p> openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout chave-privada.key -out certificado.crt </p>
 
## Comando para criar a secret sem manifesto yaml com os certificados e chave privada
<p> kubectl create secret tls meu-servico-web-tls-secret --cert=certificado.crt --key=chave-privada.key </p>
