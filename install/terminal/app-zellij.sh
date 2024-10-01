# Install Zellij using pacman
yay -S --noconfirm zellij

mkdir -p ~/.config/zellij/themes
[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/omakarch/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/omakarch/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
