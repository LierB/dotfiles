# Made By M3TOZZ
	clear
	echo -e "\033[0;31mBacking Up...\033[1;36m"
	mkdir -p Backup-$(date +%Y-%m-%d-%H:%M:%S)	
	cp -r /home/$USER/.config/fastfetch Backup-$(date +%Y-%m-%d-%H:%M:%S)
	clear
	echo -e "\033[31m Backed Up!\033[0m"
	cd Backup-$(date +%Y-%m-%d-%H:%M:%S)
	pwd
	cd ..
