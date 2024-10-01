# Install VSCode Proprietary or Code OSS
# yay -S --noconfirm code
yay -S --noconfirm visual-studio-code-bin

mkdir -p ~/.config/Code/User
cp ~/.local/share/omakarch/configs/vscode.json ~/.config/Code/User/settings.json

# Install default supported themes
code --install-extension enkia.tokyo-night
