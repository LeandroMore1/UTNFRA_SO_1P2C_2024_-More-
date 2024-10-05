#!/bin/bash

RAM=$(cat /proc/meminfo | grep -i "memtotal")
CHASIS=$(sudo dmidecode -t chassis | grep -i -E "chassis|manufacturer")
DIR=/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_-More-/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt

cat << EOF > $DIR
$RAM
$CHASIS
EOF

echo "creando archivo en $DIR"
