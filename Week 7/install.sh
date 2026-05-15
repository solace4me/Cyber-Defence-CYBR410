#!/bin/bash
set -e

echo "[+] Updating system..."
sudo apt-get update -y

echo "[+] Installing VirtualBox..."
sudo apt-get install -y virtualbox

echo "[+] Installing Vagrant..."
sudo apt-get install -y vagrant

echo "[+] Installation complete."

