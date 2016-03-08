#!/bin/bash
#sudo add-apt-repository ppa:brightbox/ruby-ng-experimental
sudo apt-get update
sudo apt-get install ruby curl build-essential subversion libgsl0ldbl libgsl0-dev


ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> $HOME/.bashrc
source $HOME/.bashrc
brew doctor

brew tap optimizers/cutest
brew install cutest --HEAD
brew install mastsif --HEAD
for f in archdefs mastsif sifdecode cutest; do \
  echo "source $(brew --prefix $f)/$f.bashrc" >> \
  $HOME/.bashrc; \
done
echo 'export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"' >> $HOME/.bashrc
source $HOME/.bashrc

#no julia
#Pkg.clone("https://github.com/optimizers/CUTEst.jl")
#Pkg.checkout("CUTEst", "develop")

#teste
#using CUTEst
#nlp = CUTEstModel("HS32")
#f = obj(nlp, [2.0;3.0])
