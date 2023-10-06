fichier_csv=$"Shell_Userlist.csv"

previous_checksum=$(md5sum "$fichier_csv" | cut -d' ' -f1)

while IFS="," read -r username password;
 do
   sudo useradd -m "$username" -s /bin/bash

    echo "$username:$password" | sudo chpasswd

done < "$fichier_csv"

new_checksum=$(md5sum "$fichier_csv" | cut -d' ' -f1)

if [ "$previous_checksum" != "$new_checksum" ]; then
	while IFS="," read -r username password;
 do
   sudo useradd -m "$username" -s /bin/bash

    echo "$username:$password" | sudo chpasswd

done < "$fichier_csv"

else
	echo "Rien à signaler"
fi

echo "Terminé"


