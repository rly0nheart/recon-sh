#!/bin/bash

echo "
▄▄▄  ▄▄▄ . ▄▄·        ▐ ▄    .▄▄ ·  ▄ .▄
▀▄ █·▀▄.▀·▐█ ▌▪▪     •█▌▐█   ▐█ ▀. ██▪▐█
▐▀▀▄ ▐▀▀▪▄██ ▄▄ ▄█▀▄ ▐█▐▐▌   ▄▀▀▀█▄██▀▐█
▐█•█▌▐█▄▄▌▐███▌▐█▌.▐▌██▐█▌   ▐█▄▪▐███▌▐▀
.▀  ▀ ▀▀▀ ·▀▀▀  ▀█▄▀▪▀▀ █▪ ▀  ▀▀▀▀ ▀▀▀ ·
2 in 1 shell reconnaisance tool
________________________________________
1. GeoIP
2. HTTPHeaders
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

if [[ $choice == "1" ]]; then
    geoip

elif [[ $choice == "2" ]]; then
    httph

else
    echo "invalid choice: $choice"
fi
