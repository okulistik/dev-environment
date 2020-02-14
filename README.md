# Development Enviroment
Docker images to be used for Okulistik php projects.

## Php Docker Image List
* Okulistik PHP 7.4 Image 

## Install and Run for Php 7.4 Image
### Zero Configuration
* cd php74
* ./build.sh
* ./run.sh
### Step by step
* cd php74
* mkdir -p ~/work/conf
* touch ~/work/conf/blank-alias.conf
* docker build -t okulistik-php:7.4 .
* Docker Run Firstly
    ```
    docker run \
      --name okul-php74 \
      -p 80:80 \ 
      -p 443:443 \
      -v ~/work:/work \
      -d okulistik-php:7.4
    ```
* Docker run again later    
    ```
    docker stop okul-php74 && \
    docker rm okul-php74 && \
    docker run \
      --name okul-php74 \
      -p 80:80 \ 
      -p 443:443 \
      -v ~/work:/work \
      -d okulistik-php:7.4
    ````

### Things to do in the sub-project directory to study
* composer install
* vendor/bin/init update:http

