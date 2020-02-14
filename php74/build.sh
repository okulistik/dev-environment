#!/usr/bin/env bash
mkdir -p ~/work/conf
touch ~/work/conf/blank-alias.conf
docker build -t okulistik/php74 .
