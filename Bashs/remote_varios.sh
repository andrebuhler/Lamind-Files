#!/bin/bash
# Testtnado comandos remotametne pra variaos pacotes
# Usuário remoto
user='lamind-admin'

# Variável com a lista de máquinas
hosts=(130 167 250 251 252 168)

for host in ${hosts[@]}
do
    echo 'Atualizando máquina '200.17.252.$host'...'
    #ssh -t $user@200.17.252.$host 'ifconfig'
    #ssh -t 200.17.252.$host 'sudo apt-get update'
    #sudo su lamind
    #mkdir teste
    #ssh -t 200.17.252.$host 'sudo apt-get upgrade -y'
    ssh -t 200.17.252.$host 'sudo shutdown -P 0'
    echo 'update concluido'
    echo -e '\n\n'
done
