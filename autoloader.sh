#!/usr/bin/bash

#asdasdasda
chmod +x autoupdate.sh
echo OK

DotDesktopDir="$HOME/.local/share/applications/"

if [ ! -d  $DotDesktopDir ]; then
	echo "la directory non esiste, passaggio alla creazione di quest'ultima"
	cd ~/.local/share/ 
	mkdir applications
fi
# crazione dei file e yabayabayba

echo $PWD

#visualizza la current directory

Curd="\"$PWD/autoupdate.sh\""

echo $Curd

#creazione file.desktop

printf "[Desktop Entry]
Name=autoupdater
Comment=Test the terminal running a command inside it
Exec=gnome-terminal -e ${Curd} 
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Application;" > $DotDesktopDir/custom_autoupdater.desktop


