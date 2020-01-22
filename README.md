# schischkin.info Portfolio/Landing page

## Index
* [Requirements](#requirements)
* [Deployment](#deployment)
* [Useful information](#useful-information)

## Requirements
* Docker
* OpenSSL (or something similar)

## Deployment
1. Create a public and private key with openssl.  
`$ openssl req -newkey rsa:4096 -nodes -keyout docker/certs/cert.key -x509 -days 365 -out docker/certs/cert.crt`

2. Build a image.  
`$ docker build . -t schischkin.info`  
`$ docker-compose build web`  

3. Deploy it/Start a container.  
`$ docker run -P -d schischkin.info`  
`$ docker-compose up -d`  

## Useful information

If you want the advantages of the [Service Worker](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API), uncomment the lines 7-12 in `src/main.js`