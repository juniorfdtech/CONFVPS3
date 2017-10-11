#!/bin/bash
b="\033[1;37m"
v="\033[1;32m"
Ver="\033[1;31m"
echo 'bash /bin/vps' > /bin/VPS

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
cd
mkdir install
cd install
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/vps > vps
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/speedtest > speedtest
wget -o /dev/null -O- https://raw.githubusercontent.com/GlEmYsSoN-LiNuX/CONFVPS3/master/limite > limite
for arqs in `ls`
do
rm /bin/$arqs 2>/dev/null
mv $arqs /bin
chmod +x /bin/$arqs
done
cd
rm -rf install
rm -rf install.sh
echo -e "\033[1;32mInstalado."
echo ''
echo -e "\033[1;32mExculte o comando \033[1;37mvps\033[1;37m"
