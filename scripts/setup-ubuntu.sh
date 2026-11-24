#!/bin/bash
set -e

sudo apt update && sudo apt upgrade -y
sudo apt install -y curl git ufw

# Instalar Docker y Docker Compose plugin
curl -fsSL https://get.docker.com | sudo sh
sudo usermod -aG docker $USER

# Configurar firewall local
sudo ufw allow 22/tcp
sudo ufw allow 25565/tcp
sudo ufw --force enable

echo "Instalación lista. Cierra sesión y vuelve a entrar, luego ejecuta: docker compose up -d"