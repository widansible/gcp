#!/bin/bash
#
# editor: Widya Nugraha
# site: https://blog.indonesiadot.com
# purpose: Delete GCP VM instance, IP address, and firewall rule

# Constants - CHANGE ME!
readonly PROJECT='ansible-257005'
readonly ZONE='asia-southeast1-a'

time yes | gcloud compute instances delete ans1

#time yes | gcloud compute firewall-rules delete default-allow-http
