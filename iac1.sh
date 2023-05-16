#!/bin/bash

echo "Criação dos diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos... "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Associando grupos aos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Atribuindo permissões aos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Em processo de criação de usuários e atribuição de grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Execução finalizada do script."




