#!/bin/bash

echo "
▄▄▄  ▄▄▄ . ▄▄·        ▐ ▄    .▄▄ ·  ▄ .▄
▀▄ █·▀▄.▀·▐█ ▌▪▪     •█▌▐█   ▐█ ▀. ██▪▐█
▐▀▀▄ ▐▀▀▪▄██ ▄▄ ▄█▀▄ ▐█▐▐▌   ▄▀▀▀█▄██▀▐█
▐█•█▌▐█▄▄▌▐███▌▐█▌.▐▌██▐█▌   ▐█▄▪▐███▌▐▀
.▀  ▀ ▀▀▀ ·▀▀▀  ▀█▄▀▪▀▀ █▪ ▀  ▀▀▀▀ ▀▀▀ ·
3 in 1 shell reconnaisance tool
________________________________________
1. GeoIP
2. HTTPHeaders
3. Subnet Calculator
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

if [[ $choice == "1" ]]; then
    geoip

elif [[ $choice == "2" ]]; then
    httph

elif [[ $choice == "3" ]]; then
    subnetcalc

else
    echo "invalid choice: $choice"
fi

