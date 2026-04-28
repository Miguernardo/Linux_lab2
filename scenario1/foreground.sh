#!/bin/bash
echo "Préparation de l'environnement d'investigation Orion..."
while [ ! -f /tmp/orion-investigation-ready ]; do
  sleep 1
done
echo "Environnement prêt."
cd /
apt install tree
# Clear the terminal so it looks clean
clear
