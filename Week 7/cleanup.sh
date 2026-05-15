#!/bin/bash
set -e

echo "[+] Destroying Vagrant VM..."
vagrant destroy -f

echo "[+] Removing Vagrant artifacts..."
rm -rf .vagrant

echo "[+] Cleanup complete."

