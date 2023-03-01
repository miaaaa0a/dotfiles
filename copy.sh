#!/bin/zsh
config_prefix="$HOME/.config/"
typeset -a configs
configs=("hypr"
         "waybar"
         "kitty"
         "rofi"
         "micro"
         "hyfetch.json"
         "mako"
         "../.zshrc")

mode=$1

if [[ $mode = "" ]] then
    echo "No mode specified! Do \"./copy.sh install\" or \"./copy.sh copy\""
    exit
fi

if [[ $mode = "copy" ]] then
    for config in $configs; do
        cp -r "${config_prefix}${config}" ./
        echo "Copying ${config_prefix}${config}"
    done
elif [[ $mode = "install" ]] then
    for config in $configs; do
        cp -r "./$(echo $config | sed 's/\.\.\\//g')" "${config_prefix}${config}" 
        echo "Copying ${config_prefix}${config}"
    done
else
    echo "Invalid argument entered!"
    exit
fi
echo "Done!"
