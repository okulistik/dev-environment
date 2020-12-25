# Development Enviroment

Docker images to be used for Okulistik php projects.

## Php Docker Image List

- Okulistik PHP 7.4 Image

## Install and Run for Php 7.4 Image

### Zero Configuration

- cd php74
- ./build.sh
- ./run.sh

### Step by step

- cd php74
- mkdir -p ~/work/conf
- touch ~/work/conf/blank-alias.conf
- docker build -t okulistik/php74 .
- Docker Run Firstly
  ```
  docker run --name okul-php74 -p 80:80 -p 443:443 -v ~/work:/work -d okulistik/php74
  ```
- Docker run again later
  ```
  docker stop okul-php74
  docker rm okul-php74
  docker run --name okul-php74 -p 80:80 -p 443:443 -v ~/work:/work -d okulistik/php74
  ```

### Things to do in the sub-project directory to study

- composer install
- vendor/bin/init update:http

### HTTPS support

- [Generate certificates](https://github.com/dakshshah96/local-cert-generator/)
- [Add root certificate (ssl/rootCA.key and ssl/rootCA.pem files) to a keychain](https://support.apple.com/guide/keychain-access/add-certificates-to-a-keychain-kyca2431/10.5/mac)
- [Change trust settings for root certificate (always trust)](https://support.apple.com/guide/keychain-access/change-the-trust-settings-of-a-certificate-kyca11871/mac)
- Restart browser
