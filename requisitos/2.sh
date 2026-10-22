#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[2] Person Information"
echo
echo "========================================================"
echo "[1] Use Google Dorks""                                   |"
echo "--------------------------------------------------------"
echo "[2] Use Specific Search Engine""                         |"
echo "--------------------------------------------------------"
echo "[3] All (Social Networks, Websites, Images, Posts, etc)""|"
echo "--------------------------------------------------------"
echo "[4] Back to Menu""                                       |"
echo "========================================================"
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Type the Target's First Name (Ex: Guillermo): " nombre
				read -p "[*] Type the Target's 1st Last Name (Ex: Vicente): " apellido1
				read -p "[*] Type the Target's 2nd Last Name (Ex: Ibanez): " apellido2
				read -p "[*] Keyword /Optional/ (Ex: Phone, Email, Location, etc): " info
				echo
				echo "###########################################"
				echo "[☢] Name: $nombre $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22+$info'" 
				;;
			2 )	echo
				read -p "[*] Type the Target's First Name (Ex: Guillermo): " nombre
				read -p "[*] Type the Target's 1st Last Name (Ex: Vicente): " apellido1
				read -p "[*] Type the Target's 2nd Last Name (Ex: Ibanez): " apellido2
				echo
				echo "###########################################"
				echo "[☢] Name: $nombre $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.idcrawl.com/$nombre-$apellido1-$apellido2'"
				;;
			3 )	echo
				read -p "[*] Type the Target's First Name (Ex: Guillermo): " nombre
				read -p "[*] Type the Target's 1st Last Name (Ex: Vicente): " apellido1
				read -p "[*] Type the Target's 2nd Last Name (Ex: Ibanez): " apellido2
				read -p "[*] Keyword /Optional/ (Ex: Phone, Email, Location, etc): " info
				echo
				echo "###########################################"
				echo "[☢] Name: $nombre $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo
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
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22+$info'" | su $user -c "firefox 'https://www.idcrawl.com/$nombre-$apellido1-$apellido2'"
				;;
			4 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 1
				bash requisitos/2.sh
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
			2 )	bash requisitos/2.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
