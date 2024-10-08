
sudo fdisk /dev/sdb
#particion 1

n #nueva particion
p # particion primaria
1 # particon 1
+2.5GB # doy tamano



#particion2

n #nueva particion
p # particion primaria
2 # particon 2
+2.5GB # doy tamano


#particion3

n #nueva particion
p # particion primaria
3 # particon 3
+2.5GB # doy tamano


#particion4


#particion2

n #nueva particion
e # particion extendida
4 # particon 4
enter # doy tamano restante



w #escribo cambios

#formatear las particiones con ext4

sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3

#creo los directorios

sudo mkdir /mnt/part1
sudo mkdir /mnt/part2
sudo mkdir /mnt/part3

#monto particiones
sudo mount /dev/sdb1 /mnt/part1
sudo mount /dev/sdb2 /mnt/part2
sudo mount /dev/sdb3 /mnt/part3



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

















:q

