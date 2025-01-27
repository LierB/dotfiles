########################################
# Made By M3TOZZ                       #
# https://m3tozz.github.io             #
########################################


# FastCat Version
    version='FastCat- 1.2'

#Colors
    red='\e[1;31m'
    yellow='\e[1;33m'
    blue='\e[1;34m'
    tp='\e[0m'
    green='\e[0;32m'
    bgreen='\033[1;32m'

# Define Constants.
export APP="FastCat" 		# Project Name
export CWD="${PWD}"			# Current Work Directory
export BASENAME="${0##*/}"	# Base Name of This Script


# Functions.
help() {
	echo -e "Wrong usage, there is 3 arguments for ${BASENAME}\n
\t${BASENAME} --shell: run the ${APP} .
\t${BASENAME} --backup: back up your own fastfetch configuration.
\t${BASENAME} --version: show the version.
\t${BASENAME} --about: about ${APP} project.
\t${BASENAME} --help: show this page.
"

}

fastcat:version() {
echo "$version"
}
fastcat:about() {
echo -e '
 _____         _    ____      _   
|  ___|_ _ ___| |_ / ___|__ _| |_ 
| |_ / _` / __| __| |   / _` | __|FastFetch Theme Pack!
|  _| (_| \__ \ |_| |__| (_| | |_ 
|_|  \__,_|___/\__|\____\__,_|\__|                       
'
    echo -e "$blue##########################################################$tp"
    echo -e "    Create by           ":" $red M3TOZZ$tp"
    echo -e "    Contributors        ":" $red LierB & m3tozz$tp"
    echo -e "    Github              ":" $red github.com/m3tozz/FastCat$tp"
    echo -e "    Community Server    ":" $red discord.com/invite/sQwYCZer95$tp"
    echo -e "    Version             ":" $red ${version} $tp"
    echo -e "$blue##########################################################$tp"
	exit 1
}
fastcat:backup() {
bash ./backup.sh
}

help() {
	echo -e "	 
--shell: run the ${APP} .
--backup: back up your own fastfetch configuration.
--version: show the version.
--about: about ${APP} project.
--help: show this page."
}


shell(){
if ! command -v fastfetch
then
    	clear
    	echo -e "\033[1;31m
FastFetch Not Found!\033[0m"
exit 1
fi
mkdir /home/$USER/.config/fastfetch
clear
banner(){
echo -e '\033[1;36m
⠀⠀⠀⢠⣾⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣰⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢰⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣀⣀⣤⣤⣶⣾⣿⣿⣿⡷
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀    \033[0;31m  ______        _    _____      _   \033[1;36m 
⣿⣿⣿⡇⠀⡾⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀    \033[0;31m |  ____|      | |  / ____|    | |  \033[1;36m 
⣿⣿⣿⣧⡀⠁⣀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀    \033[0;31m | |__ __ _ ___| |_| |     __ _| |_ \033[1;36m
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⢹⠉⠙⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀    \033[0;31m |  __/ _` / __| __| |    / _` | __|\033[1;36m
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⣀⣼⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀   \033[0;31m  | | | (_| \__ \ |_| |___| (_| | |_ \033[1;36m 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀    \033[0;31m |_|  \__,_|___/\__|\_____\__,_|\__|\033[1;36m
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀    \033[0;36m    FastFetch Theme Pack.\033[1;36m 
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠀⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⠿⠋⢃⠈⠢⡁⠒⠄⡀⠈⠁⠀⠀⠀⠀⠀⠀⠀
⣿⣿⠟⠁⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠈⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                       
'
echo -e '
\e[1;34m[01]\e[0;32mSmall Themes \e[1;35m[02]\e[0;32mLarge Themes\e[1;34m \e[1;31m[A]\e[0;32mAbout \e[1;31m[B]\e[0;32mBackup \e[1;31m[x]\e[0;32mExit
'
        echo -ne "\e[1;31mm3tozz\033[0;36m@\033[1;33mfastcat\n\e \033[0;36m↳\033[0m " ; read islem
}



banner
if [[ $islem == 1 || $islem == 01 ]]; then
	clear
	cd Small-Themes/
	bash start.sh

elif [[ $islem == 2 || $islem == 02 ]]; then
	clear
	cd Large-Themes/
	bash start.sh
elif [[ $islem == x || $islem == X ]]; then
	clear

elif [[ $islem == a || $islem == A ]]; then
	clear
echo -e '
 _____         _    ____      _   
|  ___|_ _ ___| |_ / ___|__ _| |_ 
| |_ / _` / __| __| |   / _` | __|FastFetch Theme Pack!
|  _| (_| \__ \ |_| |__| (_| | |_ 
|_|  \__,_|___/\__|\____\__,_|\__|                       
'
    echo -e "$blue##########################################################$tp"
    echo -e "    Create by           ":" $red M3TOZZ$tp"
    echo -e "    Contributors        ":" $red LierB & m3tozz$tp"
    echo -e "    Github              ":" $red github.com/m3tozz/FastCat$tp"
    echo -e "    Community Server    ":" $red discord.com/invite/sQwYCZer95$tp"
    echo -e "    Version             ":" $red ${version} $tp"
    echo -e "$blue##########################################################$tp"
	exit 1

elif [[ $islem == b || $islem == B ]]; then
bash ./backup.sh
else
	echo -e '\e[1;34m Wrong transaction number!\033[0m'
fi
}

# Argument Parser.
case "${1,,}" in
	"--shell"|"-s")
		shell
	;;
	"--backup"|"-b")
		fastcat:backup
	;;
		"--about"|"-a")
		fastcat:about
	;;
	"--version"|"-v")
		fastcat:version
	;;
	*)
		help
	;;
esac
