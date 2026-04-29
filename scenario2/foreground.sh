# 1. On se place dans le dossier personnel de l'utilisateur (standard sur Killercoda)
cd /home/ubuntu

# 2. On crée et on entre dans le dossier principal du projet
mkdir -p projet_clean_sweep
cd projet_clean_sweep

# 3. Setup de la structure du serveur
mkdir -p serveur/logs/old serveur/secret/archives serveur/.hidden_chamber

# 4. Création des fichiers et des Flags
echo "flag{INVISIBL3_MAST3R}" > serveur/.hidden_chamber/note.txt
touch serveur/audit_initial.txt

# Génération des logs (on reste dans le dossier du projet)
for i in {1..2000}; do 
    echo "Log line $i: No flags here" > serveur/logs/file$i.log
done

# Ajout du flag caché dans les logs
echo "URGENT: flag{GR3P_PRO_99}" >> serveur/logs/file12.log

# Cache du flag de l'archive et verrouillage des permissions
echo "flag{LOCKSMITH_77}" > serveur/secret/archives/KEY
chmod 000 serveur/secret/archives

# 5. Lancement d'un processus en arrière-plan (à identifier par les élèves)
sleep 4000 & 

# 6. Nettoyage de l'écran et message de succès
clear
echo "===================================================="
echo "MISSION CLEAN SWEEP : Le serveur est prêt."
echo "Votre zone de travail : /home/ubuntu/projet_clean_sweep"
echo "À vous de jouer."
echo "===================================================="
