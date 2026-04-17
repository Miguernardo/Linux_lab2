#!/bin/bash

# Création du chaos
mkdir -p serveur/logs/old serveur/secret/archives serveur/.hidden_chamber
echo "flag{INVISIBL3_MAST3R}" > serveur/.hidden_chamber/note.txt
for i in {1..20}; do echo "Log line $i: Nothing to see here" > serveur/logs/file$i.log; done
echo "URGENT: flag{GR3P_PRO_99}" >> serveur/logs/file12.log
echo "flag{LOCKSMITH_77}" > serveur/secret/archives/KEY
chmod 000 serveur/secret/archives
sleep 4000 & # Le processus à tuer
