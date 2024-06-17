#!/bin/bash

# Flush existing rules and set default policies
echo "resetting all existing configurations.."
sudo ufw reset
sudo ufw default deny incoming
echo "disabling incoming connections"
sudo ufw default allow outgoing

echo "opening up port 22 (ssh)"
# Allow SSH (port 22)
sudo ufw allow 22/tcp

echo "port 22 opened"

# Allow HTTP (port 80) and HTTPS (port 443)
echo "opening up 80 and 443 (http, https)"
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
echo "port 80 and 443 opened"

# Enable the firewall with verbose output
sudo ufw enable
echo "enabling firewall configuration"
sudo ufw status verbose

echo "Done."
