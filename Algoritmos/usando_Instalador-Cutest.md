<!--
# Tenta instalar o CUTest da forma masi automatica possivel
# Copia o arquivo do pc atual (200.17.252.193:/home/lamind) para o lamind-admin
# remoto, altera o modo do executavel, copia para o usuario lamind. Loga no
#usuario atravez do usuario lamind-admin. Entra na pasta do executavel e executa

scp Desktop/Bashs/Instalador_CUTEst.sh lamind-admin@200.17.252.191
ssh 200.17.252.191
  sudo chmod a+x /home/lamind/Instalador_CUTEst.sh && sudo cp Instalador_CUTEst.sh /home/lamind/
  sudo su lamind
  cd &&  ./Instalador_CUTEst.sh && rm Instalador_CUTEst.sh
  julia
    Pkg.clone("https://github.com/optimizers/CUTEst.jl")
    Pkg.checkout("CUTEst", "develop")
-->

# Após concluido o Instalador-Lamind
O script Instalador-Lamind necessitava de privilégios de administrador e instala
globalmente seus dados. Poŕem, agora não precisamos mais desses privilégios e
devemos executar no usuário final o Instalador-CUTEst.sh e Julia-Packages.jl.
