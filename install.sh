#!/bin/bash
b="\033[1;37m"
v="\033[1;32m"
Ver="\033[1;31m"
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
mkdir /etc/CONFVPS/senha
mkdir /etc/CONFVPS/limite
echo -e "\033[1;32mInstalando CONFVPS..."
mkdir install
cd install
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/CONFVPS3 > CONFVPS3
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/speedtest > speedtest
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/limite > limite
for conf in `ls`
do
chmod a+x $conf
cp $conf /bin
cd 
rm -rf install
rm -rf install.sh
echo -e "\033[1;32mInstalado."
echo ''
echo -e "\033[1;32mExculte o comando \033[1;32mCONFVPS3\033[1;37m"
