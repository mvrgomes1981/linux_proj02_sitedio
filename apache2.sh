#!/bin/bash

echo "Atualizando SO"

apt-get update && upgrade

echo "Instalando Apache2"

apt-get install apache2 -y

echo "Instalando unzip"

apt-get install unzip

echo "Baixando aplicação"

cd /tmp
mkdir main
cd main

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando Aplicação"

unzip main.zip

rm /var/www/html/index.html


echo "Copiando site"

cp -r /tmp/main/linux-site-dio-main/* /var/www/html/


echo "##### FIM #####"

