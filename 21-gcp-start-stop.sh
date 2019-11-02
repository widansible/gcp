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
 else
 if [ -z "$2" ]; then
  while [ -z "$ACT" ]; do
   echo -e "Action:\n\n- start\n- stop\n"
   echo -n "Pilih Action yang akan dilakukan: "
   read ACT
  done
 fi
 time yes | gcloud compute instances $ACT $NAMA --zone=$ZONE
fi
