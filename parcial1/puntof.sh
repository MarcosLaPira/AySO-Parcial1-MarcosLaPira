#!/bin/bash

#  IP publica
echo "Mi IP Publica:" >> Filtro_Avanzado.txt
curl -s ifconfig.me >> Filtro_Avanzado.txt

# Información del usuario
echo -e "\n Mi Usuario es:" >> Filtro_Avanzado.txt
cat /etc/passwd >> Filtro_Avanzado.txt

# Informacion del hash
echo -e "\nInformacion de la contraseña encriptada:" >>Filtro_Avanzado.txt
sudo cat /etc/shadow >> Filtro_Avanzado.txt

