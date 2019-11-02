#!/bin/bash
#
# Constants - CHANGE ME!
readonly PROJECT='ansible-257005'
readonly ZONE='asia-southeast1-a'

if [ -z "$1" ]; then
 NAMA=$1
 while [ -z "$NAMA" ]; do
  echo -n "Masukan nama vm: "
  read NAMA
 done
 
 echo -e "Action:\n\n- start\n- stop\n"
 echo -n "Pilih Action yang akan dilakukan: "
 read ACT
 
 time yes | gcloud compute instances $ACT $NAMA --zone=$ZONE
fi
