#!/bin/sh
#Version 1.0
#-----------
#Instalaçao feita no usuário administrador

 sudo apt-get install epstool pstoedit gnuplot transfig -y
 sudo apt-add-repository ppa:octave/stable -y
 sudo apt-get update
 sudo apt-cache search "octave"
 sudo apt-get install octave -y
