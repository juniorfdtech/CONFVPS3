#!/bin/bash
cd
clear
read -p "Digite Seu Nome: " nome
 if [[ -z "$nome" ]]; then
  echo -e "Nome nao pode ficar em branco"
  sleep 0.8
  echo -e "Saindo..."
  sleep 1
  exit
 fi
IP=$(wget -o /dev/null -O- http://glemyson.hol.es)
read -p "Confirme Seu IP: " -e -i $IP IP
 if [[ -z "$IP" ]]; then
  echo -e "IP nao pode ficar em branco"
  sleep 0.8
  echo -e "Saindo..."
  sleep 1
  exit
 fi
clear
echo "$IP" >/etc/IP
echo "$IP" >/etc/IPMENU
echo "$nome" >/etc/dono
mkdir /etc/CONFVPS
mkdir /etc/CONFVPS/usuarios
echo -e "instalando CONFVPS..."
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/CONFVPS3 > CONFVPS3
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/speedtest > speedtest
chmod a+x CONFVPS3
chmod a+x speedtest 
cp speedtest /bin
cp CONFVPS3 /bin
rm CONFVPS3
rm speedtest
rm install.sh
echo -e "Instalado."
echo ''
echo -e "Exculte o comando CONFVPS3"
