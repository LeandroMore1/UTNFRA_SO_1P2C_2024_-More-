PASS=$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')
GRUPO_ALUMNOS=p1c2_2024_gAlumno
GRUPO_PROFESORES=p1c2_2024_gProfesores
VALIDAR_GRUPO_ALUMNOS=$(sudo cat /etc/group | grep -i 'p1c2_2024_gAlumno')
VALIDAR_GRUPO_PROFESORES=$(sudo cat /etc/group | grep -i 'p1c2_2024_gProfesores')

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

#sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_ALUMNOS p1c2_2024_A1
#sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_ALUMNOS p1c2_2024_A2
#sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_ALUMNOS p1c2_2024_A3
#sudo useradd -m -p "$PASS" -s /bin/bash -G $GRUPO_PROFESORES p1c2_2024_P1 

