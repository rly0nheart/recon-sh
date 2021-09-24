m#!/bin/bash

echo "
▄▄▄  ▄▄▄ . ▄▄·        ▐ ▄    .▄▄ ·  ▄ .▄
▀▄ █·▀▄.▀·▐█ ▌▪▪     •█▌▐█   ▐█ ▀. ██▪▐█
▐▀▀▄ ▐▀▀▪▄██ ▄▄ ▄█▀▄ ▐█▐▐▌   ▄▀▀▀█▄██▀▐█
▐█•█▌▐█▄▄▌▐███▌▐█▌.▐▌██▐█▌   ▐█▄▪▐███▌▐▀
.▀  ▀ ▀▀▀ ·▀▀▀  ▀█▄▀▪▀▀ █▪ ▀  ▀▀▀▀ ▀▀▀ ·
Reconnaisance tool
________________________________________
1. GeoIP
2. HTTPHeaders
3. Subnet Calculator
4. Google dork(lite)
"
read -p "Enter choice: " choice

function geoip(){
	clear
	read -p "target (domain or ip): " target
	curl "https://api.hackertarget.com/geoip/?q=$target"
}

function httph(){
	clear
	read -p "target (domain or ip): " target
	curl "https://api.hackertarget.com/httpheaders/?q=$target"
}

function subnetcalc(){
	clear
	read -p "target (cird format or subnet mask): " target
	curl "https://api.hackertarget.con/subnetcalc/?q=$target"
}

function googledork(){
    clear
    read -p "$dork query: " query
    search="https://www.google.com/search?q=$query"
    curl "https://api.hackertarget.com/pagelinks/?q=$search"
}

if [[ $choice == "1" ]]; then
    geoip

elif [[ $choice == "2" ]]; then
    httph

elif [[ $choice == "3" ]]; then
    subnetcalc

elif [[ $choice == "4" ]]; then
    googledork

else
    echo "invalid choice: $choice"
fi

