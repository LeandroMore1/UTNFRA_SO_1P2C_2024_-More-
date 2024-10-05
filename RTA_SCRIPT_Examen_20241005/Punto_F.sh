DIR=/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_-More-/RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
HASH=$(sudo grep vagra /etc/shadow | awk -F ':' '{print $2}')
IP=$(curl -s ifconfig.me | awk -F 'v' '{print $1}')
GIT_URL=$(git remote get-url origin)
USER=$(whoami)


cat << EOF > $DIR
Mi IP Publica es: $IP
Mi usuario es: $USER
Mi el Hash de mi usuario es: $HASH
La URL de mi repositorio es: $GIT_URL
EOF

echo "creando archivo de filtro avanzado..."



