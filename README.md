# shell-exe
Info Important pour le job 8 : Les fichiers backup sont dans la vm Linux donc j'ai juste reporté les fichiers connexion de la vm à mon ordinateur.
Tous les jobs sont fait mais certains ont besoin d'utiliser crontab qui ne peut être mis dans un script.
C'est pourquoi ce readme est utilisé
Pour le job 8 et 9, on doit utiliser crontab.
Suivez les étapes suivantes :

crontab -e

Pour le Job 8 : */30 * * * * /mnt/c/Users/vekin/Desktop/Laplateforme/shellgroupe3/Job08/get_logs.sh

Pour le job 9 : * * * * * /mnt/c/Users/vekin/Desktop/Laplateforme/shellgroupe3/Job09/accessrights.sh
