#!/bin/bash

echo "creando directorios de estructura asimetrica..."

sudo mkdir -p /Estructura_Asimetrica/{correo/{carteros_{1..10},cartas_{1..100}},cliente/cartas_{1..100}}

echo "mostrando directorios: "

tree /Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4

ls /
