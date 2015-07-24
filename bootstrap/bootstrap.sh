#!/bin/sh

# Update the VM
sudo yum -y update

# Set server timezone and sync time
sudo timedatectl set-timezone Europe/Sofia