#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest1 -c "Usuario convidado" -s /bin/bash -m
echo "guest1:Senha123" | chpasswd
passwd guest1 -e

useradd guest2 -c "Usuario convidado" -s /bin/bash -m
echo "guest2:Senha123" | chpasswd
passwd guest2 -e

useradd guest3 -c "Usuario convidado" -s /bin/bash -m
echo "guest3:Senha123" | chpasswd
passwd guest3 -e

useradd guest4 -c "Usuario convidado" -s /bin/bash -m
echo "guest4:Senha123" | chpasswd
passwd guest4 -e

echo "Usuários criados"
