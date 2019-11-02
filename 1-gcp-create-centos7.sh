#!/bin/bash

# Variable
readonly SERVICE_ACCOUNT='ansible@ansible-257005.iam.gserviceaccount.com'

# Create GCE VM with disk storage
time gcloud compute instances create ans1 \
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

