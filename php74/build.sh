#!/usr/bin/env bash
mkdir -p ~/work/conf
mkdir -p ~/work/conf/bup
mkdir -p ~/work/public
touch ~/work/conf/blank-alias.conf
touch ~/work/conf/bup/blank-alias.conf

docker build -t okulistik/php74 .
