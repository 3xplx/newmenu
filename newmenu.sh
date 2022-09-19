#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

# // Get IP
wget -qO- --inet4-only 'https://raw.githubusercontent.com/3xplx/dev/main/get-ip_sh' | bash;
source /root/ip-detail.txt;
export MYIP="$IP";

# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
export BLUEBG='\033[44m';

# // Export Align
export BOLD="\e[1m";
export WARNING="${RED}\e[5m";
export UNDERLINE="\e[4m";

export REGCEK=$(curl -sS https://raw.githubusercontent.com/3xplx/regIPvps/main/iplite | awk '{print $4}' | grep $MYIP )
if [[ $MYIP = $REGCEK ]]; then
SKIP=true;
else	
clear
scvpn-error
fi
