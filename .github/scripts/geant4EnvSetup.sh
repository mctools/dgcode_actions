#!/bin/bash

DATA_DIR="$1"

echo "G4ENSDFSTATEDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4ENSDFSTATE2.3 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4PIIDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4PII1.3 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4INCLDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4INCL1.0 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4LEDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4EMLOW8.0 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4PARTICLEXSDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4PARTICLEXS4.0 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4NEUTRONHPDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4NDL4.6 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4SAIDXSDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4SAIDDATA2.0 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4REALSURFACEDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/RealSurface2.2 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4ABLADATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/G4ABLA3.1 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4LEVELGAMMADATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/PhotonEvaporation5.7 > /dev/null ; pwd`" >> $GITHUB_ENV
echo "G4RADIOACTIVEDATA=`cd $GITHUB_WORKSPACE/$DATA_DIR/RadioactiveDecay5.6 > /dev/null ; pwd`" >> $GITHUB_ENV

echo "$GITHUB_WORKSPACE/geant4-11.0.3/bin" >> $GITHUB_PATH
