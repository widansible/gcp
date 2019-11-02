#!/bin/bash
#
# author: Gary A. Stafford
# site: https://programmaticponderings.com
# license: MIT License
# purpose: Create GCP VM instance and associated resources
# usage: sh ./part1_create_vm.sh

# Constants - CHANGE ME!
#readonly PROJECT='ansible'
#readonly SERVICE_ACCOUNT='ansible@ansible-257005.iam.gserviceaccount.com'
#readonly ZONE='asia-southeast1-a'

source part0_source_creds.sh

# Create GCE VM with disk storage
time gcloud compute instances create ansible \
  --machine-type f1-micro \
  --network default \
  --subnet default \
  --network-tier PREMIUM \
  --maintenance-policy MIGRATE \
  --service-account $SERVICE_ACCOUNT \
  --scopes https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
  --tags ansible \
  --image centos-7-v20191014 \
  --image-project centos-cloud \
  --boot-disk-size 10GB \
  --boot-disk-type pd-standard \
  --boot-disk-device-name compute-disk

# Create firewall rule to allow ingress traffic from port 80
#time gcloud compute firewall-rules create default-allow-http \
#  --project $PROJECT \
#  --description 'Allow HTTP from anywhere' \
#  --direction INGRESS \
#  --priority 1000 \
#  --network default \
#  --action ALLOW \
#  --rules tcp:80 \
#  --source-ranges 0.0.0.0/0 \
#  --target-tags apache-http-server
