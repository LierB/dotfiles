#!/bin/bash                                                       
#   _ _ _ _____ __    __    _____ _____ _____ _____ _____ 
#  | | | |  _  |  |  |  |  |  _  |  _  |  _  |   __| __  |
#  | | | |     |  |__|  |__|   __|     |   __|   __|    -|
#  |_____|__|__|_____|_____|__|  |__|__|__|  |_____|__|__|
#
#  by Bina


current_wp="$HOME/wallpapers/current_wallpaper"
blurred_wp="$HOME/wallpapers/current_wallpaper_blurred.png"
blur="50x30"

# write path to wp into file
if [ ! -f $current_wp ]; then
    touch $current_wp
    echo "$HOME/wallpapers/default.png" > "$current_wp"
fi

# current wallpaper path
current_wallpaper=$(cat "$current_wp")

# select new wallpaper
case $1 in
    "init")
        if [ -f $current_wp ]; then
            wal -q -i $current_wallpaper
        else
            wal -q -i ~/wallpapers/
        fi
    ;;
    # random wallpaper
    *)
        wal -q -i ~/wallpapers/
    ;;
esac

# new wallpaper name
new_wp=$(echo $wallpaper | sed "s|$HOME/wallpapers/||g")

# launch waybar based on new wallpaper colors
source "$HOME/.cache/wal/colors.sh"
~/.config/waybar/launch.sh

# update soft link to cava colors based on wallpaper colors
# (cava needs to manually be restarted)
ln -sf "$HOME/.cache/wal/cava-colors" "$HOME/.config/cava/config"

# switch to new wallpaper with swww
transition_type="grow"
#transition_type="wipe"
# transition_type="random"

swww img $wallpaper \
    --transition-type=$transition_type \
    --transition-pos top-right

# create blurred wallpaper (for wlogout)
magick $wallpaper -resize 1920x1080\! $wallpaper
echo ":: Resized"
if [ ! "$blur" == "0x0" ] ; then
    magick $wallpaper -blur $blur $blurred_wp
    echo ":: Blurred"
fi

# update current wallpaper file
echo "$wallpaper" > "$current_wp"



