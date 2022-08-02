#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade -y

echo "Instalando o apache2..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Baixando aplicacao web...."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Movendo para diretorio apache"

cd linux-site-dio-main

cp -R * /var/www/html/
