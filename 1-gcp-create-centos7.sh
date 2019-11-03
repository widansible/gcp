#!/bin/bash

# Constants - CHANGE ME!
readonly PROJECT='ansible-257005'
readonly ZONE='asia-southeast1-a'
NAMA=$1

if [ -z "$1" ]; then
 while [ -z "$NAMA" ]; do
  echo -n "masukan nama vm: "
  read NAMA
 done
 else
 # Create GCE VM with disk storage
 gcloud compute instances create $NAMA \
  --machine-type g1-small \
  --network default \
  --subnet default \
  --network-tier PREMIUM \
  --maintenance-policy MIGRATE \
  --scopes https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
  --image centos-7-v20191014 \
  --image-project centos-cloud \
  --boot-disk-size 10GB \
  --boot-disk-type pd-standard \
  --boot-disk-device-name compute-disk \
  --zone $ZONE
fi
