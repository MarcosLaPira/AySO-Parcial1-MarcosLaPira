#!/bin/bash

# Crear particiones en /dev/sdb
echo "Creando particiones en /dev/sdb..."

(
echo n # Nueva partición
echo p # Partición primaria
echo 1 # Partición 1
echo   # Utiliza el valor por defecto para el inicio
echo +2.5G # Tamaño de la partición

echo n # Nueva partición
echo p # Partición primaria
echo 2 # Partición 2
echo   # Utiliza el valor por defecto para el inicio
echo +2.5G # Tamaño de la partición

echo n # Nueva partición
echo p # Partición primaria
echo 3 # Partición 3
echo   # Utiliza el valor por defecto para el inicio
echo +2.5G # Tamaño de la partición

echo n # Nueva partición
echo e # Partición extendida
echo 4 # Partición 4 (Extendida)
echo   # Utiliza el valor por defecto para el inicio
echo   # Usa todo el espacio restante

echo w # Escribir los cambios
) | sudo fdisk /dev/sdb

echo "Particiones creadas exitosamente."

# Formatear particiones como ext4
echo "Formateando particiones como ext4..."
sudo mkfs.ext4 /dev/sdb1
sudo mkfs.ext4 /dev/sdb2
sudo mkfs.ext4 /dev/sdb3

# Crear directorios de montaje
echo "Creando directorios para montar las particiones..."
sudo mkdir -p /mnt/part1 /mnt/part2 /mnt/part3

# Montar particiones
echo "Montando particiones..."
sudo mount /dev/sdb1 /mnt/part1
sudo mount /dev/sdb2 /mnt/part2
sudo mount /dev/sdb3 /mnt/part3

echo "Proceso completado exitosamente."





NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0 63.9M  1 loop /snap/core20/2318
loop1    7:1    0   87M  1 loop /snap/lxd/29351
loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
sda      8:0    0   40G  0 disk
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk
sdc      8:32   0   10G  0 disk
├─sdc1   8:33   0  2.3G  0 part /mnt/part3
│                               /mnt/part2
│                               /mnt/part1
├─sdc2   8:34   0  2.3G  0 part
├─sdc3   8:35   0  2.3G  0 part
└─sdc4   8:36   0    1K  0 part
sdd      8:48   0    2G  0 disk


















