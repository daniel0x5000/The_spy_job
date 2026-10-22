#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[3] Nickname/Alias Information"
echo
echo "=============================================================="
echo "[1] Search 574 social networks for an account with that Nick"" |"
echo "--------------------------------------------------------------"
echo "[2] Use Google Dorks (See where that Nick has been published)""|"
echo "--------------------------------------------------------------"
echo "[3] Use Specific Search Engine""                               |"
echo "--------------------------------------------------------------"
echo "[4] All (Social Networks, Websites, Images, Posts, etc)""      |"
echo "--------------------------------------------------------------"
echo "[5] Back to Menu""                                             |"
echo "=============================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Type the Target's Nickname, Alias or Handle (Ex: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				cd requisitos/blackbird
				echo "==========================="
				echo "  Searching for account $nick"
				echo "   in 574 Social Networks"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				sudo python blackbird.py -u $nick
				cd ..
				cd ..
				;;
			2 )	echo
				read -p "[*] Type the Target's Nickname, Alias or Handle (Ex: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nick%22'"
				;;
			3 )	echo
				read -p "[*] Type the Target's Nickname, Alias or Handle (Ex: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.idcrawl.com/u/$nick'"
				;;
			4 )	echo
				read -p "[*] Type the Target's Nickname, Alias or Handle (Ex: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				cd requisitos/blackbird
				echo "==========================="
				echo " Collecting Information"
				echo "  and opening browsers"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Social networks with the Nickname $nick (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				sudo python blackbird.py -u $nick
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Searching the Internet for information about $nick (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				cd ..
				cd ..
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nick%22'" | su $user -c "firefox 'https://www.idcrawl.com/u/$nick'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			5 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 1
				bash requisitos/3.sh
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
			2 )	bash requisitos/3.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
