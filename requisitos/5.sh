#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[5] Email Information"
echo
echo "=============================================================="
echo "[1] Email Information""                                        |"
echo "--------------------------------------------------------------"
echo "[2] Search 121 social networks for an account with that Email""|"
echo "--------------------------------------------------------------"
echo "[3] Check if they have GitHub and find their Username""        |"
echo "--------------------------------------------------------------"
echo "[4] Use Google Dorks (See where the Email has been published)""|"
echo "--------------------------------------------------------------"
echo "[5] Verify if the Email exists""                               |"
echo "--------------------------------------------------------------"
echo "[6] All (Info, Verify Email, 121 networks, Google Dorks)""     |"
echo "--------------------------------------------------------------"
echo "[7] Back to Menu""                                             |"
echo "=============================================================="
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Type the Target's Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo curl -s emailrep.io/$email > requisitos/resultados/Info-$email.txt
				cat requisitos/resultados/Info-$email.txt
				echo
				echo
				echo "If the (suspicious: true) option appears as (true) it is because; we have not observed this email address on the Internet, it is a free provider and has no profiles on major services like LinkedIn, Facebook and iCloud. The lack of digital presence may simply indicate a new email address, but it is usually suspicious."
				echo
				echo "/\/\/\/\/\ A Website will now open where we will click the magnifying glass and fill in the Captcha /\/\//\/\/"
				echo
				echo "Opening Browser...."
				sleep 3
				su $user -c "firefox 'https://epieos.com/?q=$email'"
				;;
			2 )	echo
				read -p "[*] Type the Target's Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo holehe --only-used --no-clear $email
				;;
			3 )	echo
				read -p "[*] Type the Target's Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo python3 requisitos/osgint/osgint.py -e $email
				echo
				echo "If it returned a Username, inside Section [4] Social Network Information"
				echo "we have option [6] GitHub Account Information + email which will return the Account Info"
				;;
			4 )	echo
				read -p "[*] Type the Target's Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$email%22'"
				;;
			5 )	echo
				echo "Type the target's Email below: "
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://verify-email.org'"
				;;
			6 )	echo
				read -p "[*] Type the Target's Email [Gmail, Yahoo, Outlook]: " email
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Email Information (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo curl -s emailrep.io/$email requisitos/resultados/Info-$email.txt
				cat requisitos/resultados/Info-$email.txt
				echo
				echo "If the (suspicious: true) option appears as (true) it is because; we have not observed this email address on the Internet, it is a free provider and has no profiles on major services like LinkedIn, Facebook and iCloud. The lack of digital presence may simply indicate a new email address, but it is usually suspicious."
				echo
				echo "/\/\/\/\/\ A Website will now open where we will click the magnifying glass and fill in the Captcha /\/\//\/\/"
				echo
				echo "Opening Browser...."
				sleep 2
				#su $user -c "firefox 'https://epieos.com/?q=$email'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Search 121 social networks for an account with that Email (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo holehe --only-used --no-clear $email
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Searching for the GitHub account linked to that email (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				sudo python3 requisitos/osgint/osgint.py -e $email
				echo
				echo "If it returned a Username, inside Section [4] Social Network Information"
				echo "we have option [6] GitHub Account Information + email which will return the Account Info"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Use Google Dorks (See where the Email has been published) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser (When the processes finish)...."
				#su $user -c "firefox 'https://www.google.com/search?q=%22$email%22'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Verify if the Email exists (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Email: $email"
				echo "######################################"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				su $user -c "firefox 'https://epieos.com/?q=$email'" | su $user -c "firefox 'https://www.google.com/search?q=%22$email%22'" | su $user -c "firefox 'https://verify-email.org'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			7 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 1
				bash requisitos/5.sh
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
			2 )	bash requisitos/5.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
