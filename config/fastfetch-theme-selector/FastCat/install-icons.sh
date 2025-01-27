# Made By M3TOZZ

clear

banner(){
echo -e '\033[1;36m
    ______           __  ______      __ 
   / ____/___ ______/ /_/ ____/___ _/ /_
  / /_  / __ `/ ___/ __/ /   / __ `/ __/
 / __/ / /_/ (__  ) /_/ /___/ /_/ / /_  
/_/    \__,_/____/\__/\____/\__,_/\__/  
 FastFetch Theme Pack                             
'

        echo -ne "\e[0;32mInstall Terminal Icons (icons-in-terminal) (Y/N)" ; read islem
}

banner
if [[ $islem == y || $islem == Y ]]; then
	clear
	echo -e "\033[0;31mSetting Up...\033[1;36m"
	git clone https://github.com/sebastiencs/icons-in-terminal.git
	cd icons-in-terminal
	./install.sh
        clear
	echo -e "\033[1;31mFastCat - FastFetch Theme Pack!\033[0m"
       	sleep 3
	./print_icons.sh
	echo -e "\033[1;31mInstalled! \033[1;36mNow Start A New Terminal :) \033[0m"

elif [[ $islem == n || $islem == N ]]; then
	clear
echo -e "\033[0m GoodBye."
	exit 1
 else
	echo -e '\033[36;40;1m Wrong transaction number!\033[0m'	
fi
