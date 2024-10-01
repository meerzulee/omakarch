# Needed for all installers
yay -Syu --noconfirm
yay -S --noconfirm curl git unzip

# Run terminal installers
for installer in ~/.local/share/omakarch/install/terminal/*.sh; do source $installer; done
