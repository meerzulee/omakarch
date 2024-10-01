set -e


echo -e "$ascii_art"
echo "=> Omakarch is for fresh Arch Linux (EndeavourOS + Gnome) installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo pacman -Syu --noconfirm >/dev/null
sudo pacman -S --noconfirm git >/dev/null

echo "Cloning Omakarch..."
rm -rf ~/.local/share/omakarch
git clone https://github.com/meerzulee/omakarch.git ~/.local/share/omakarch >/dev/null
if [[ $OMAKARCH_REF != "master" ]]; then
	cd ~/.local/share/omakarch
	git fetch origin "${OMAKARCH_REF:-stable}" && git checkout "${OMAKARCH_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakarch/install.sh
