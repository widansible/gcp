#!/bin/bash
#
# Constants - CHANGE ME!
readonly PROJECT='ansible-257005'
readonly ZONE='asia-southeast1-a'
NAMA=$1
ACT=$2

if [ -z "$1" ]; then
 while [ -z "$NAMA" ]; do
  echo -n "Masukan nama vm: "
  read NAMA
 done
fi
if [ -z "$2" ]; then
 while [ -z "$ACT" ]; do
  echo -e "\nAction: - start - stop - reset\n"
  echo -n "Pilih Action yang akan dilakukan: "
  read ACT
 done
fi
time yes | gcloud compute instances $ACT $NAMA --zone=$ZONE
