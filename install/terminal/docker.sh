
# Install Docker engine and standard plugins
# sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
yay -S --noconfirm docker docker-compose docker-buildx docker-rootless-extras 

#todo docker-rootless-extras post install scripts

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
