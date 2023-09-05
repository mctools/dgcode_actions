#!/bin/bash

set -e
set -u
set -o pipefail

DATA_DIR="$1"
BASE_URL="https://cern.ch/geant4-data/datasets/"
TAR_FILE_DIR="Geant4data_tar_files"


declare -a arrName=("G4PhotonEvaporation.5.7"
                    "G4NDL.4.6"
                    "G4EMLOW.8.0"
                    "G4RadioactiveDecay.5.6"
                    "G4PII.1.3"
                    "G4RealSurface.2.2"
                    "G4SAIDDATA.2.0"
                    "G4ABLA.3.1"
                    "G4ENSDFSTATE.2.3"
                    "G4INCL.1.0"
                    "G4PARTICLEXS.4.0"
                    )

declare -a unTarName=("PhotonEvaporation5.7"
                      "G4NDL4.6"
                      "G4EMLOW8.0"
                      "RadioactiveDecay5.6"
                      "G4PII1.3"
                      "RealSurface2.2"
                      "G4SAIDDATA2.0"
                      "G4ABLA3.1"
                      "G4ENSDFSTATE2.3"
                      "G4INCL1.0"
                      "G4PARTICLEXS4.0"
                      )

if [[ ! -e "$GITHUB_WORKSPACE/$TAR_FILE_DIR" ]]; then
   mkdir "$GITHUB_WORKSPACE/$TAR_FILE_DIR"
fi

if [[ ! -e "$GITHUB_WORKSPACE/$DATA_DIR" ]]; then
   mkdir "$GITHUB_WORKSPACE/$DATA_DIR"
fi

for i in "${!arrName[@]}"
do
   if [[ ! -d "$GITHUB_WORKSPACE/$DATA_DIR/${unTarName[i]}" ]]; then
      echo "$BASE_URL${arrName[i]}.tar.gz"
      curl -L "$BASE_URL${arrName[i]}.tar.gz" > "$GITHUB_WORKSPACE/$TAR_FILE_DIR/${arrName[i]}.tar.gz"
      tar -xf "$GITHUB_WORKSPACE/$TAR_FILE_DIR/${arrName[i]}.tar.gz" -C "$GITHUB_WORKSPACE/$DATA_DIR"
   else
      echo "$GITHUB_WORKSPACE/$DATA_DIR/${unTarName[i]} exists"
   fi
done
