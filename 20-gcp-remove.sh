#!/bin/bash
#
# Constants - CHANGE ME!
readonly PROJECT='ansible-257005'
readonly ZONE='asia-southeast1-a'

if [ -z "$1" ]; then
 NAMA=$1
 while [ -z "$NAMA" ]; do
  echo "masukan nama vm:"
  read NAMA
 done
 time yes | gcloud compute instances delete $NAMA
fi
#time yes | gcloud compute firewall-rules delete default-allow-http
