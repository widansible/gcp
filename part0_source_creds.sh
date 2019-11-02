#!/bin/bash
# editor: Widya Nugraha
# author: Gary A. Stafford
# site: https://blog.indonesiadot.com
# license: MIT License
# purpose: Source Ansible/GCP credentials
# usage: source ./part0_ansible_gcp_creds.sh

# Constants - CHANGE ME!
export GCP_PROJECT='ansible'
export GCP_AUTH_KIND='serviceaccount'
# export GCP_SERVICE_ACCOUNT_EMAIL='ansible@ansible-257005.iam.gserviceaccount.com'
export GCP_SERVICE_ACCOUNT_FILE='/data/ansible/gcp/ansible-257005-e96b152e226f.json'
export GCP_SCOPES='https://www.googleapis.com/auth/compute'
readonly PROJECT='ansible'
readonly SERVICE_ACCOUNT='ansible@ansible-257005.iam.gserviceaccount.com'
readonly ZONE='asia-southeast1-a'
