#!/bin/bash
# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[1;34m'
PURPLE='\e[35m'
CYAN='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
CYAN='\e[36m'
HIBlue="\033[0;94m"
LIGHT='\033[0;37m'
colour=$(cat /var/lib/banner-name/colour)
colour1=$(cat /var/lib/banner-name/colour1)
MYIP=$(wget -qO- ifconfig.co);
# VPS Information
Checkstart1=$(ip route | grep default | cut -d ' ' -f 3 | head -n 1);
if [[ $Checkstart1 == "venet0" ]]; then
    clear
	  lan_net="venet0"
    typevps="OpenVZ"
else
    clear
		lan_net="eth0"
    typevps="KVM"
fi
clear
# DNS Patch
tipeos2=$(uname -m)
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"

source /etc/os-release
Versi_OS=$VERSION
ver=$VERSION_ID
Tipe=$NAME
URL_SUPPORT=$HOME_URL
basedong=$ID
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
domain=$(cat /etc/v2ray/domain)
Sver=$(cat /home/version)
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
IPVPS=$(curl -s ipinfo.io/ip )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	uram=$( free -m | awk 'NR==2 {print $3}' )
	fram=$( free -m | awk 'NR==2 {print $4}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
clear
banner=$(cat /var/lib/banner-name/banner)
ASCII=$(cat /var/lib/banner-name/ASCII)
echo ""
figlet -f$ASCII "$banner" | lolcat
echo "___________________________________________________________"
username=$(cat /var/lib/banner-name/username)
echo ""
echo -e "Username:" "$username" | lolcat

echo -e ""
echo -e "  $colour ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e          "  $CYAN       Premium Server Script By AdamMukhriz        "
echo -e "  $colour ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo -e "  $green Time              :$NC  $WKT"
  echo -e "  $green Day               :$NC  $DAY"
  echo -e "  $green Date              :$NC  $DATE"

  echo -e "  ▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰▰" |lolcat -p 6.0 -S 60
echo -e "  $colour ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "  $PURPLE                     Menu                         "
echo -e "  $colour ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "   $PURPLE [ 1 ]$NC >>>  $colour1 MENU CUBA$NC"
echo -e "   $PURPLE [ 2 ]$NC >>>  $colour1 MENU BANNER$NC"
echo -e "   $PURPLE [ 3 ]$NC >>>  $red NOT WORK$NC"
echo -e "   $PURPLE [ 4 ]$NC >>>  $red NOT WORK$NC"
echo -e "   $PURPLE [ 5 ]$NC >>>  $red NOT WORK$NC"
echo -e "   $PURPLE [ 6 ]$NC >>>  $red NOT WORK$NC"
echo -e "   $PURPLE [ 7 ]$NC >>>  $red NOT WORK$NC"
echo -e "   $PURPLE [ 8 ]$NC >>>  $red NOT WORK $NC"
echo -e "   $PURPLE [ 9 ]$NC >>>  $red NOT WORK $NC"
echo -e ""
echo -e ""
echo -e   " $green Press x or [ Ctrl+C ] • To-Exit-Script"
echo -e ""
echo -e "  $colour ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e ""
read -p "  Select From Options [1-9 or x] :  "  opt
echo -e   ""
case $opt in
1) clear ; adam ;;
2) clear ; try ;;
3) clear ; NOT WORK ;;
4) clear ; NOT WORK ;;
5) clear ; NOT WORK ;;
6) clear ; NOT WORK ;;
7) clear ; NOT WORK ;;
8) clear ; NOT WORK ;;
9) clear ; NOT WORK ;;
x) exit ;;
*) echo  "Please enter an correct number" ; sleep 1 ; menu ;;
esac
