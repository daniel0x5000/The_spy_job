#!/bin/bash

source requisitos/0.sh

Title
echo "                                [0] ==>Install and Configure Requirements<== 🔍"
echo "                                [1] Website/Company Information              🔍"
echo "                                [2] Person Information                       🔍"
echo "                                [3] Nickname/Alias Information               🔍"
echo "                                [4] Social Network Information               🔍"
echo "                                [5] Email Information                        🔍"
echo "                                [6] Phone Number Information                 🔍"
echo "                                [7] Public IP Information                    🔍"
echo "                                [8] YouTube Video/Channel Information        🔍"
echo "                                [9] Image Information                        🔍"
echo "                                [99] -------------> Exit"" <---------------- 🔍"
echo
read -p "[*] Choose an option: " opc1
	case $opc1 in
			0 )	bash requisitos/0.sh
				;;
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	bash requisitos/4.sh
				;;
			5 )	bash requisitos/5.sh
				;;    
			6 )	bash requisitos/6.sh
				;;
			7 )	bash requisitos/7.sh
				;;
			8 )	bash requisitos/8.sh
				;;
			9 )	bash requisitos/9.sh
				;;
			99 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				bash the_spy_job.sh
	esac
