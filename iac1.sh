#!/bin/bash

echo -e "Enunciado: \n"
echo -e "Diretórios:"
echo -e "       /publico ;\n     /adm ;\n        /ven ;\n        /sec ; \n \n"
echo -e "Grupos:"
echo -e "       GRP_ADM ;\n      GRP_VEN ;\n     GRP_SEC; \n \n"
echo -e "Usuários: \n"
echo -e "       Departamento administrativo:\n          carlos ;\n              maria ;\n               joao; \n \n"
echo -e "       Departamento de vendas:\n               debora ;\n              sebastiana ;\n          roberto; \n \n"
echo -e "       Departamento de secretaria:\n           josefina ;\n            amanda ;\n              rogerio \n \n"
echo -e "Definições: \n"
echo -e "       - Todo provisionamento deve ser feito em um arquivo do tipo Bash Script;"
echo -e "       - O dono de todos os diretórios criados será o usuário root;"
echo -e "       - Todos os usuários terão permissão total dentro do diretório /publico;"
echo -e "       - Os usuarios de cada grupo terão permissão total dentro de seu respectivo diretório;"
echo -e "       - Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem; \n \n"

echo "Criando diretórios..."

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
