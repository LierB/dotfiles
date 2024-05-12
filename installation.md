### This is a step by step instruction to manually install this hyprland rice. I will guide you through it.
We will first install hyprland and the dependencies, then you can decide on optional packages, fonts and icons and finally clone this repo and modify according to your taste, needs and creativity. 

> [!WARNING]
> This wiki is under construction and might be incomplete!!! 
> In case you notice something and find mistakes, I would appreciate it if you reach out to me.

> [!CAUTION]
> This rice was designed on an Arch Linux system and therefor the installation is intended for Arch (and Arch-based distros). I use an AMD GPU, for NVIDIA cards you have to install to relevant packages.

> [!NOTE]
> I will write an automatic install script for you in the future.

## Install dependencies
### Hyprland
For this rice we need to have hyprland WM installed first. You can follow the installation guide on the official [hyprland wiki](https://wiki.hyprland.org/Getting-Started/Installation/); or what I would recommend is to install it via the Arch user repository ([AUR](https://aur.archlinux.org/packages)), as I think it's the easiest way.

In case you never used AUR, I would first install yay, as it helps you with installing packages from the repository. We will also use yay later to install other dependencies and optional packages from the AUR.
Open a terminal and navigate to the location where you want to store the yay git repo. 
```shell
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

```
Then we can use yay to install hyprland.
```shell
yay -S hyprland

```
After installing, you could theoretically already start hyprland WM with the command `Hyprland` or you can select Hyprland in your login menu when you login the next time.


### Z shell (zsh)
We will switch from bash to zsh, as zsh is an extended version with much more features and configuration possibilities.
```shell
sudo pacman -S zsh
chsh -s $(which zsh)
zsh
source ~/.zshrc
```
We will install [oh-my-zsh](https://ohmyz.sh/), a framework to manage zsh configuration, with some plugins. There are different version, I installed it with wget. If you don't have wget installed yet, you can also use another option or install it beforehand.
```shell
sudo pacman -S wget
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S zsh-autosuggestions-git zsh-autocomplete-git zsh-syntax-highlighting-git fast-syntax-highlighting
```
In the `.zshrc` file you can pick your favorite zsh-theme. I prefer "robbyrussell" as it's most minimalistic in my view. You can wait with these modifications until the end of setting up this rice.


### Components
The following packages are necessary for the rice, they include the terminal emulator, the bar, application launcher, the logout menu, the lock screen, the color theme tool, the wallpaper daemon, and the tools for audio and connection control. 

```shell
sudo pacman -S kitty waybar hyprlock wofi btop pavucontrol blueman networkmanager nm-connection-editor imagemagick 
yay -S python-pywal wlogout swww grimblast-git
```

### Optional packages 
The packages that we install here are really nice, but not relevant for the rice. You can decide which one to istall. 
```shell
sudo pacman -S neofetch zathura
yay -S cava tty-clock snake 2048.c 
```

### Fonts & Icons & cursors
You can use the defaults or any font, icon set and cursor you find pretty. I explain the setup of my selection with the next update of the wiki.

## Clone repository
Now we are ready to clone the git repository. Navigate to the desired location where you would like to store the cloned directory. 

```shell
git clone https://github.com/LierB/dotfiles.git

```
After cloning the dotfiles repo, we have to ensure that all hidden configuration files are properly placed in your local environment. We just copy them from the cloned directory to the respective local directories.

```shell

cp -R dotfiles/.config/* ~/.config/
cp dotfiles/.zshrc ~/
```
You can copy my selected wallpapers or use your own.

```shell

cp -R dotfiles/wallpapers/* ~/wallpapers/

```
If you don't want to copy them, just be sure, that your wallpapers are in the wallpapers directory in your home directory. If you don't have this directory yet, you have to create it.
```shell

mkdir ~/wallpapers/

```
And then copy or move your wallpapers in.

## Modify the rice
Now it's time for your own creativity. Change the zsh-theme or create your own theme, add wallpapers, modify the .css files or whatever comes to your mind. Ask me, if you need help. I'm glad to support you.

I would be happy to see your results :3

Enjoy ricing!  
