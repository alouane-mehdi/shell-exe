
date_format=$(date +'%d-%m-%Y-%H:%M')
nom_fichier="number_connection-$date_format"
utilisateur="mehdi"
nombre_connexions=$(last "$utilisateur" | wc -l ) 
echo "$nombre_connexions" > "$nom_fichier"
tar -cvf "/home/mehdi/Shell.exe/Job08/Backup/$nom_fichier.tar" "$nom_fichier"
mv "$nom_fichier" "/home/mehdi/Shell.exe/Job08/$nom_fichier"
