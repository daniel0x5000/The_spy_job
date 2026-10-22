#!/bin/bash
api=`cat requisitos/configuracion/.api_phone.txt`
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[6] Phone Number Information"
echo
echo "==============================================================="
echo "[1] See the Phone Number's Carrier and Country""                |"
echo "---------------------------------------------------------------"
echo "[2] Check if it is registered on Instagram, Amazon or Snapchat""|"
echo "---------------------------------------------------------------"
echo "[3] Use Google Dorks (See where the Phone has been published)"" |"
echo "---------------------------------------------------------------"
echo "[4] Try to extract the Phone owner's real name""                |"
echo "---------------------------------------------------------------"
echo "[5] All (Carrier, Networks, Google Dorks, Owner Name)""         |"
echo "---------------------------------------------------------------"
echo "[6] Back to Menu""                                              |"
echo "==============================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Type the Target Phone's Country Code (Ex: 34): " codigo
				read -p "[*] Type the Target's Phone Number (Ex: 625295417): " telefono
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisitos/resultados/$telefono.txt
				echo "[*] Valid: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Country: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}' | cut -c 13- | rev | cut -c2- | rev`
				echo "[*] Carrier: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}' | cut -c 13- | rev | cut -c3- | rev`
				;;
			2 )	echo
				read -p "[*] Type the Target Phone's Country Code (Ex: 34): " codigo
				read -p "[*] Type the Target's Phone Number (Ex: 62529541): " telefono
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $codigo $telefono
				;;
			3 )	echo
				read -p "[*] Type the Target Phone's Country Code (Ex: 34): " codigo
				read -p "[*] Type the Target's Phone Number (Ex: 62529541): " telefono
				read -p "[*] Keyword /Optional/ (Ex: Name, Email, Location, etc): " info
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'"
				;;
			4 )	echo
				echo "Next, type the Phone Number on the Website, choose the country and fill in the captchas that appear when you click (Name Lookup)"
				echo
				echo "Opening Browser...."
				sleep 3
				su $user -c "firefox 'https://www.revealname.com'"
				;;
			5 )	echo
				read -p "[*] Type the Target Phone's Country Code (Ex: 34): " codigo
				read -p "[*] Type the Target's Phone Number (Ex: 62529541): " telefono
				read -p "[*] Keyword /Optional/ (Ex: Name, Email, Location, etc): " info
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) See the Phone Number's Carrier and Country (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisitos/resultados/$telefono.txt
				echo "[*] Valid: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Country: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}' | cut -c 12-`
				echo "[*] Carrier: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}' | cut -c 12-`
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Check if it is registered on Instagram, Amazon or Snapchat (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $codigo $telefono
				echo
				sleep 3
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Use Google Dorks (See where the Phone has been published) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Opening Browser (When the processes finish)...."
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'"
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Try to extract the Phone owner's real name (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Phone: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Next, type the Phone Number on the Website, choose the country and fill in the captchas that appear when you click (Name Lookup)"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'" | su $user -c "firefox 'https://www.revealname.com'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 1
				bash requisitos/6.sh
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
			2 )	bash requisitos/6.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
