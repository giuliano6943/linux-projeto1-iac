#!/bin/bash 

echo "Executando...."

mkdir /publico
mkdir /adm
mkdir /ven 
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -c "Carlão" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_ADM
useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_ADM

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash  -p $(openssl passwd -1 giuliano6943) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_SEC
useradd amanada -m -c "Amanada" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -1 giuliano6943) -G GRP_SEC

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /ven/
chmod 770 /adm/
chmod 770 /sec/


echo "Finalizando !!!!!!" 






