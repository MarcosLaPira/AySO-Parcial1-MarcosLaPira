#creo grupos

sudo groupadd grupodevops
 sudo groupadd grupodiseno
 sudo groupadd grupodeveloper

#creo usuario y asigno grupo

sudo useradd -m -G grupodevops developer
sudo useradd -m -G grupodiseno tester
sudo useradd -m -G grupodeveloper devops
sudo useradd -m  disenador



#desde sta carpeta vagrant@VMTP1:~/Examenes-UTN$
# ajusto los permisos
#aca asigno dueno y grupo
sudo chown developer:developer alumno_1
sudo chown tester:tester alumno_2
sudo chown devops:devops alumno_3
sudo chown disenador:disenador profesores


#asigno permisos

# Para alumno_1 (dueño rwx, grupo rx, otros nada)
sudo chmod 750 alumno_1

# Para alumno_2 (dueño rwx, grupo y otros nada)
sudo chmod 700 alumno_2

# Para alumno_3 (dueño y grupo rwx, otros rx)
sudo chmod 775 alumno_3

# Para profesores (dueño y grupo rwx, otros nada)
sudo chmod 770 profesores
whoami > /home/vagrant/parcial1/validar_developer.txt
whoami > /home/vagrant/parcial1/validar_tester.txt
whoami > /home/vagrant/parcial1/validar_devops.txt
whoami > /home/vagrant/parcial1/validar_disenador.txt
