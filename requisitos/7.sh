#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[7] Public IP Information"
echo
echo "=========================================================="
echo "[1] See which Internet Company the IP belongs to""         |"
echo "----------------------------------------------------------"
echo "[2] Geolocation of the IP's exact city""                   |"
echo "----------------------------------------------------------"
echo "[3] Find open ports and their services ""                  |"
echo "----------------------------------------------------------"
echo "[4] Check IP Status (See if it is down) ""                 |"
echo "----------------------------------------------------------"
echo "[5] All (Company, Geolocation, Ports, Status)""            |"
echo "----------------------------------------------------------"
echo "[6] Back to Menu""                                         |"
echo "=========================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "Type the Target's Public IP: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Internet Company: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
				;;
			2 )	echo
				read -p "Type the Target's Public IP: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Continent: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Country: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] City: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "I recommend comparing the obtained data with https://nordvpn.com/pt-br/ip-lookup"
				echo "since they have the most reliable and accurate data about a Public IP"
				;;
			3 )	echo
				read -p "Type the Target's Public IP: " ip
				read -p "Scan the 1000 most used ports (y) or all 65535 (n)? (y/n): " opc2
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2nd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3rd Port Scan using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser...."
							sleep 2
							su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ If using a VPN, Option 1 may return incorrect ports /\/\//\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Nmap /65535 ports\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2nd Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3rd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "4th Port Scan using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "5th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser...."
							sleep 2
							su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ If using a VPN, Options 1 and 2 may return incorrect ports /\/\//\/\/"
					fi
				;;
			4 )	echo
				read -p "Type the Target's Public IP: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://check-host.net/check-ping?host=$ip'"
				;;
			5 )	Title
				echo "[7] Public IP Information"
				echo
				read -p "Type the Target's Public IP: " ip
				read -p "Scan the 1000 most used ports (y) or all 65535 (n)? (y/n): " opc2
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Public IP Information (Geolocation, Internet Company, Timezone, Proxy) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Internet Company: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
				echo
				echo "[*] Continent: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Country: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] City: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "[*] Timezone: " `curl -s "http://ip-api.com/line/$ip?fields=timezone"`
				echo
				echo "[*] Proxy: " `curl -s "http://ip-api.com/line/$ip?fields=proxy"`
				echo
				echo "I recommend comparing the obtained data with https://nordvpn.com/pt-br/ip-lookup"
				echo "since they have the most reliable and accurate data about a Public IP"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Listing open ports and their services (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2nd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3rd Port Scan using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser (When the processes finish)...."
							#su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ If using a VPN, Option 1 may return incorrect ports /\/\//\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1st Scan using Nmap /65535 ports\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2nd Scan using Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3rd Scan using Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "4th Port Scan using ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "5th Scan using Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Opening Browser (When the processes finish)...."
							#su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ If using a VPN, Options 1 and 2 may return incorrect ports /\/\//\/\/"
					fi
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Check IP Status (See if it is down) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				su $user -c "firefox 'https://www.shodan.io/host/$ip'" | su $user -c "firefox 'https://check-host.net/check-ping?host=$ip'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 1
				bash requisitos/7.sh
	esac
echo
echo
echo "#####################"
echo "[1] Back to Menu"
echo "[2] Run again"
echo "[3] Exit"
echo "#####################"
echo
read -p "Choose an option: " opc3
	case $opc3 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisitos/7.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
