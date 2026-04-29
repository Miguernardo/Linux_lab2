#!/bin/bash
# On s'assure d'être à la racine et on crée le décor
mkdir -p /home/ubuntu/scenario1
touch /home/ubuntu/scenario1/note_secrete.txt /home/ubuntu/scenario1/.config_cache
echo "Accès autorisé" > /home/ubuntu/scenario1/bienvenue.txt

cd /home/ubuntu && mkdir -p etage1/bureau/tiroir etage2/secret && touch etage2/secret/pass.txt

cd /home/ubuntu && mkdir -p chantier/archives/juillet && cd chantier/archives/juillet
touch rapport.txt notes.txt erreurs.log
echo -e "Ligne 1\nLigne 2\nLigne 3\nLigne 4\nLigne 5\nURGENT: Erreur fatale\nLigne 7\nLigne 8" > rapport.txt

cd /home/ubuntu && mkdir -p lab_edition && cd lab_edition
# On crée un fichier de base
echo "--- DEBUT DU JOURNAL ---" > journal.txt

cd /home/ubuntu && mkdir -p archives/2025/secrets && \
echo "CLE_ACCES: ALPHA-99" > archives/2025/secrets/pass.txt && \
echo "Note: Ne pas oublier" > check.txt

cd /home/ubuntu && mkdir -p zone_securisee && cd zone_securisee
touch donnees_sensibles.txt

clear
cd /

sleep 5000 &

apt install tree neofetch cmatrix 
