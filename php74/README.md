# Okulistik Php 7.4
Docker images to be used for Okulistik php projects.

## Installation
Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/okulistik/php74) and is the recommended method of installation.

    ```
    docker run \
      --name okul-php74 \
      -p 80:80 \ 
      -p 443:443 \
      -v ~/work:/work \
      -d okulistik/php74
    ```

You can also pull the `latest` tag which is built from the repository *HEAD*

```bash
docker pull okulistik/php74:latest
```

