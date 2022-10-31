#!/bin/bash

# $@ is the operating sytem

if [[ $@ == "Linux" ]]; then
  sudo apt-get update
  #TK testing: added gdb and valgrid while debugging!
  sudo apt-get install curl g++ build-essential python3-dev cmake libxerces-c-dev libexpat1-dev gfortran libhdf5-serial-dev git python3-venv python3-pip python3-tk mesa-common-dev libglu1-mesa-dev freeglut3-dev cm-super gdb valgrind
  #sudo apt install texlive texlive-latex-extra texlive-fonts-recommended dvipng #debugging
elif [[ $@ == "macOS"  ]]; then
  brew install cmake python python-tk expat xerces-c hdf5 freetype # git
else
  echo "Wrong operating system"
  exit 1
fi
