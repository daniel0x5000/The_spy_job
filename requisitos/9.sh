#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[9] Image Information"
echo
echo "========================================"
echo "[1] Extract Image Metadata""             |"
echo "----------------------------------------"
echo "[2] Google Image Search""                |"
echo "----------------------------------------"
echo "[3] Use Specific Search Engine""         |"
echo "----------------------------------------"
echo "[4] Upscale an Image 4x with quality""   |"
echo "----------------------------------------"
echo "[5] All (Metadata,Search Engines,Tools)""|"
echo "----------------------------------------"
echo "[6] Back to Menu""                       |"
echo "========================================"
echo
read -p "Choose an option: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Type the file name with its path (/home/kali/Escritorio/Prueba.png): " imagen
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				primera=`echo $imagen | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						imagen=`echo $imagen | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $imagen
				;;
			2 )	echo
				echo "Next, when the Web Page opens, drop the Image and the search will start"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/imghp?hl=en&ogbl='"
				echo
				;;
			3 )	echo
				echo "Next, when the Web Page opens, drop the Image and the search will start"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://tineye.com'"
				echo
				;;
			4 )	echo
				echo "Next, when the Web Page opens, click the (Drag or Drop) button, select the Image and press (Start All)"
				echo
				echo "Opening Browser...."
				sleep 2
				su $user -c "firefox 'https://imgupscaler.com/'"
				echo
				;;
			5 )	echo
				read -p "[*] Type the file name with its path (/home/kali/Escritorio/Prueba.png): " imagen
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extracting Image Metadata (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				primera=`echo $imagen | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						imagen=`echo $imagen | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $imagen
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Search the Image through Google to use its neural network and use a Specific Search Engine (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] Image: $imagen"
				echo "################################################################"
				echo
				echo "Next, when the Web Page opens, drop the Image and the search will start"
				echo
				echo "Opening Browser and All Tabs...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/imghp?hl=en&ogbl='" | su $user -c "firefox 'https://tineye.com'" | su $user -c "firefox 'https://imgupscaler.com/'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
				sleep 2
				bash requisitos/9.sh
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
			2 )	bash requisitos/9.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY Not a valid option"
	esac
