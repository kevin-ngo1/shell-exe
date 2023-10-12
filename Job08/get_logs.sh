backup=~/Job08/Backup

mkdir -p "$backup"

nombre_de_connections=$(grep -P "systemd-logind.*miniguns" /var/log/auth.log | wc -l)
date=$(date +"%d-%m-%Y-%H:%M")
fichier="$backup/number_connection-$date.txt"

echo "Le nombre de connection de miniguns : $nombre_de_connections " > "$fichier"

tar -czf "$backup/number_connection-$date.tar" -C "$backup" "number_connection-$date.txt"

echo "Archivage du fichier réussi : $fichier" 
