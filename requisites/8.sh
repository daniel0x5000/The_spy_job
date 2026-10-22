#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[8] YouTube Video/Channel Information"
echo
echo "======================================"
echo "[1] Video / Channel Information""      |"
echo "--------------------------------------"
echo "[2] Video / Channel Statistics""       |"
echo "--------------------------------------"
echo "[3] All (Information and Statistics)"" |"
echo "--------------------------------------"
echo "[4] Back to Menu""                     |"
echo "======================================"
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Paste the YouTube Video or Channel Link/URL below: " link
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Opening Browser...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'"

				;;
			2 )	echo
				read -p "[*] Paste the YouTube Video or Channel Link/URL below: " link
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Opening Browser...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/bulk?url=$link&submit=true'"
				;;
			3 )	echo
				read -p "[*] Paste the YouTube Video or Channel Link/URL below: " link
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extracting Information from a YouTube Video / Channel (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Opening Browser (When the processes finish)...."
                echo
				sleep 2
                #su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Generating Statistics for a YouTube Video / Channel (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Opening Browser and All Tabs...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'" | su $user -c "firefox 'https://mattw.io/youtube-metadata/bulk?url=$link&submit=true'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			4 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 1
				bash requisitos/8.sh
	esac
echo
echo
echo "#####################"
echo "[1] Back to Menu"
echo "[2] Run again"
echo "[3] Exit"
echo "#####################"
echo
read -p "Choose an option: " opc2
	case $opc2 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisitos/8.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
