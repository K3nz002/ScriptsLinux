#!/bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupo de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -c "adm" -m -s /bin/bash -G GRP_ADM
echo "carlos:Senha123" | chpasswd
useradd maria -c "adm" -m -s /bin/bash -G GRP_ADM
echo "maria:Senha123" | chpasswd
useradd joao -c "adm" -m -s /bin/bash -G GRP_ADM
echo "joao:Senha123" | chpasswd

useradd debora -c "ven" -m -s /bin/bash -G GRP_VEN
echo "debora:Senha123" | chpasswd
useradd sebastiana -c "ven" -m -s /bin/bash -G GRP_VEN
echo "sebastiana:Senha123" | chpasswd
useradd roberto -c "ven" -m -s /bin/bash -G GRP_VEN
echo "roberto:Senha123" | chpasswd

useradd gustavo -c "sec" -m -s /bin/bash -G GRP_SEC
echo "gustavo:Senha123" | chpasswd
useradd rafael -c "sec" -m -s /bin/bash -G GRP_SEC
echo "rafael:Senha123" | chpasswd
useradd cintia -c "sec" -m -s /bin/bash -G GRP_SEC
echo "cintia:Senha123" | chpasswd

echo "Ajustando permições dos grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"
