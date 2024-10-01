# Display system information in the terminal
# Install fastfetch from the Arch User Repository (AUR)
yay -S --noconfirm fastfetch

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  # Use Omakarch fastfetch config
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/omakarch/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
