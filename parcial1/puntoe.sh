#!/bin/bash

#memoria
 grep "MemTotal:" /proc/meminfo > repogit/Filtro_Basico.txt~

 
# Obtener información del fabricante del chassis
echo "Chassis Information:" >> Filtro_Basico.txt~
sudo dmidecode -t chassis >> Filtro_Basico.txt~

