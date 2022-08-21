#!/bin/bash
echo "Atualizando o Servidor Web DIO"
apt-get update
apt-get upgrade -y
echo " "
echo "Instalando o Apache do Servidor Web DIO"
apt-get install apache2 -y
netstat -putanl | grep apache
echo " "
echo "Instalando o UnZip do Servidor Web DIO"
apt-get install unzip -y
echo " "
echo "Baixando os arquivos do Servidor Web DIO"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo " "
echo "Descomapctando os arquivos do Servidor Web DIO"
unzip main.zip
echo " "
echo "Copiando os arquivos do Servidor Web DIO"
cd linux-site-dio-main
cp -R * /var/www/html/
echo " "
echo "Listando Arquivos do Servidor Web DIO"
ls -l /var/www/html/
echo " "
echo "Testando o acesso ao Servidor Web DIO"
cd /tmp
rm -rf index.html
wget localhost
cat index.html
echo " "
echo "Finalizada a Instalacao do Servidor Web DIO"
