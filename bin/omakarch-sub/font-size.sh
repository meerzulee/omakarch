choice=$(gum choose {7..14} "<< Back" --height 11 --header "Choose your terminal font size")

if [[ $choice =~ ^[0-9]+$ ]]; then
	sed -i "s/^size = .*$/size = $choice/g" ~/.config/alacritty/font-size.toml
	source $OMAKARCH_PATH/bin/omakarch-sub/font-size.sh
else
	source $OMAKARCH_PATH/bin/omakarch-sub/font.sh
fi
