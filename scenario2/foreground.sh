# Setup de la mission
mkdir -p serveur/logs/old serveur/secret/archives serveur/.hidden_chamber
echo "flag{INVISIBL3_MAST3R}" > serveur/.hidden_chamber/note.txt
touch serveur/audit_initial.txt
for i in {1..20}; do echo "Log line $i: No flags here" > serveur/logs/file$i.log; done
echo "URGENT: flag{GR3P_PRO_99}" >> serveur/logs/file12.log
echo "flag{LOCKSMITH_77}" > serveur/secret/archives/KEY
chmod 000 serveur/secret/archives
sleep 4000 & 
clear
echo "MISSION CLEAN SWEEP : Le serveur est prêt. À vous de jouer."
