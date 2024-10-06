PASS=$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')
GRUPO_ALUMNOS=p1c2_2024_gAlumno
GRUPO_PROFESORES=p1c2_2024_gProfesores
VALIDAR_GRUPO_ALUMNOS=$(sudo cat /etc/group | grep -i 'p1c2_2024_gAlumno')
VALIDAR_GRUPO_PROFESORES=$(sudo cat /etc/group | grep -i 'p1c2_2024_gProfesores')
USERA1=$(sudo cat /etc/shadow | grep 'p1c2_2024_A1'| awk -F ':' '{print $1}')
USERA2=$(sudo cat /etc/shadow | grep 'p1c2_2024_A2'| awk -F ':' '{print $1}')
USERA3=$(sudo cat /etc/shadow | grep 'p1c2_2024_A3'| awk -F ':' '{print $1}')
USERP1=$(sudo cat /etc/shadow | grep 'p1c2_2024_P1' | awk -F ':' '{print $1}')

if [ -n "$VALIDAR_GRUPO_ALUMNOS" ]; then
    echo "el grupo alumnos ya existe"
else
    echo "creando grupo alumnos"
    sudo groupadd $GRUPO_ALUMNOS
fi


if [ -n "$VALIDAR_GRUPO_PROFESORES" ]; then
    echo "el grupo profesores ya existe"
else
    echo "creando grupo profesores"
    sudo groupadd $GRUPO_PROFESORES
fi


if [ -z "$USERA1" ]; then
    sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_ALUMNOS p1c2_2024_A1
else
    echo "el user $USERA1 ya existe"
fi	

if [ -z "$USERA2" ]; then
    sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_ALUMNOS p1c2_2024_A2
else
    echo "el user $USERA2 ya existe"
fi

if [ -z "$USERA3" ]; then
    sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_ALUMNOS p1c2_2024_A3
else
    echo "el user $USERA3 ya existe"
fi

if [ -z "$USERP1" ]; then
    sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_PROFESORES p1c2_2024_P1
else
    echo "el user $USERP1 ya existe"
fi




