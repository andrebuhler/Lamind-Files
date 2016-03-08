lista=(200.17.252.120 200.17.252.128 200.17.252.130 200.17.252.145 200.17.252.151 200.17.252.159 200.17.252.160 200.17.252.165 200.17.252.166 200.17.252.167 200.17.252.168 200.17.252.179 200.17.252.188 200.17.252.189 200.17.252.190 200.17.252.191 200.17.252.192 200.17.252.193 200.17.252.246 200.17.252.247 200.17.252.248 200.17.252.249 200.17.252.250 200.17.252.251 200.17.252.252 200.17.252.253 200.17.252.70 200.17.252.75 200.17.252.78)

for ip_da_lista in ${lista[@]}
do
  scp -v Desktop/Instalador-Octave.sh $ip_da_lista:/home/lamind-admin/
  ssh $ip_da_lista 'chmod a+x Instalador-Octave.sh'
  ssh -t $ip_da_lista ./Instalador-Octave.sh
done
 200.17.252.79 200.17.252.152


130

while [ "$ip_da_lista" != "0" ];
 do
  read -r ip_da_lista
  scp -v Desktop/Instalador-Octave.sh 200.17.252.$ip_da_lista:/home/lamind-admin/
  ssh 200.17.252.$ip_da_lista 'chmod a+x Instalador-Octave.sh'
  ssh -t 200.17.252.$ip_da_lista ./Instalador-Octave.sh
done
