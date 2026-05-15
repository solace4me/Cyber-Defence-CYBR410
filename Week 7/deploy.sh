#!/bin/bash
set -e

echo "[+] Starting Vagrant environment..."
vagrant up

echo "[+] VM is running. Installing NGINX inside VM..."
vagrant ssh -c "sudo apt-get update -y && sudo apt-get install -y nginx"

echo "[+] Deployment complete. Access the service at: http://localhost:8080"

