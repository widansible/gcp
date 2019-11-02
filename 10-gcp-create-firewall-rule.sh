#!/bin/bash

# Variable
readonly SERVICE_ACCOUNT='ansible@ansible-257005.iam.gserviceaccount.com'

# Create firewall rule to allow ingress traffic
time gcloud compute firewall-rules create default-allow-ssh-3943 \
 --description 'Allow SSH port 3943 from anywhere' \
 --direction INGRESS \
 --priority 1000 \
 --network default \
 --action ALLOW \
 --rules tcp:3943 \
 --source-ranges 0.0.0.0/0
