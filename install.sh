# Created by m3tozz for LierB <3
# https://github.com/LierB/dotfiles/
clear
echo -e '\e[1;34m Backing Up...\033[0m'
mkdir Backup && cp -r /home/$USER/.config/btop/ /home/$USER/.config/cava/ /home/$USER/.config/fastfetch/ /home/$USER/.config/hypr/ /home/$USER/.config/kitty/ /home/$USER/.config/neofetch/ Backup/
cp -r /home/$USER/.zshrc Backup/

echo -e '\e[1;34m Installing required packages\033[0m'
sudo pacman -S git zsh kitty waybar hyprlock wofi btop pavucontrol blueman networkmanager nm-connection-editor imagemagick
mkdir appsmake
cd appsmake
git clone https://aur.archlinux.org/python-pywal.git && cd python-pywal && makepkg -si && cd ..
git clone https://aur.archlinux.org/wlogout.git && cd wlogout && makepkg -si && cd ..
git clone https://aur.archlinux.org/swww.git && cd swww && makepkg -si && cd .. 
git clonehttps://aur.archlinux.org/grimblast-git.git && cd swww && makepkg -si && cd .. && cd..

banner(){
        echo -ne "\e[0;32m
        Do you want to install optional packages?   (Y/N)" ; read islem
}

banner
if [[ $islem == y || $islem == Y ]]; then
echo -e '\e[1;34m Installing optional packages\033[0m'
sudo pacman -S fastfetch neofetch zathura zoxide
cd appsmake
git clone https://aur.archlinux.org/cava.git && cd cava && makepkg -si && cd .. 
git clone https://aur.archlinux.org/tty-clock.git && cd tty-clock && makepkg -si && cd .. 
git clone https://aur.archlinux.org/snake.git && cd snake && makepkg -si && cd .. && cd ..

echo -e '\e[1;34mCopying config files...\033[0m'
rm -r /home/$USER/.zshrc
cp -r .zshrc /home/$USER/
rm -r /home/$USER/.config/btop /home/$USER/.config/cava /home/$USER/.config/fastfetch /home/$USER/.config/hypr /home/$USER/.config/kitty /home/$USER/.config/neofetch
cd config/ && cp -r btop cava fastfetch-theme-selector fastfetch hypr kitty neofetch wal waybar wlogout wofi zathura /home/$USER/.config/
cd ..
sleep 3
clear
cd ..
echo -e '\e[1;34mThe files have been uploaded to your system and the necessary packages have been installed.'
echo -e '\e[31mEnjoy ricing!\033[0m'

elif [[ $islem == n || $islem == N ]]; then
echo -e '\e[1;34mCopying config files...\033[0m'
rm -r /home/$USER/.zshrc
cp -r .zshrc /home/$USER/
rm -r /home/$USER/.config/btop /home/$USER/.config/cava /home/$USER/.config/fastfetch /home/$USER/.config/hypr /home/$USER/.config/kitty /home/$USER/.config/neofetch
cd config/ && cp -r btop cava fastfetch-theme-selector fastfetch hypr kitty neofetch wal waybar wlogout wofi zathura /home/$USER/.config/
cd ..
sleep 3
clear
cd ..
echo -e '\e[1;34mThe files have been uploaded to your system and the necessary packages have been installed.'
echo -e '\e[31mEnjoy ricing!\033[0m'
fi
