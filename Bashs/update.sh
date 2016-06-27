#!/bin/bash
# envia o arquvio com as atualiza
# Usuário remoto
user='lamind-admin'
#file='este'
# Variável com a lista de máquinas
#hosts=(130 167 250 )
hosts=(152)
for host in ${hosts[@]}
do
    echo 'Atualizando máquina '200.17.252.$host'...'

    scp Desktop/Bashs/updateb.jl lamind-admin@200.17.252.$host:/home/lamind-admin/
    ssh -t 200.17.252.$host 'sudo scp updatea.sh /home/lamind/ && chmod a+x updatea.sh'
    #ssh -t 200.17.252.$host 'sudo su lamind'

    #sudo scp /tmp/$file /home/lamind/Desktop

    #ssh -t $user@200.17.252.$host 'ifconfig'
    #ssh -t 200.17.252.$host 'sudo apt-get update'
    #sudo su lamind
    #mkdir teste
    #ssh -t 200.17.252.$host 'sudo apt-get upgrade -y'
    #ssh -t 200.17.252.$host 'sudo shutdown -P 0'
    echo 'update concluido'
    echo -e '\n\n'
done
