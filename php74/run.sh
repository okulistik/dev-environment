#!/usr/bin/env bash

C_NAME="okul-php74"

echo "Stop container: $C_NAME"
docker container stop $C_NAME
echo "Remove container: $C_NAME"
docker container rm $C_NAME
echo "Run again Container: $C_NAME"
docker container run --name $C_NAME \
    -p 80:80 \
    -v ~/web/teknolist/:/work  \
    -d okulistik/php74
echo "Your Alias List:"
docker exec -it $C_NAME ls -l /work/conf/
echo "Please run inside your project that 'vendor/bin/init update:http', and re-run this script."
docker ps
