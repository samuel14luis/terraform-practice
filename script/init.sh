#!/bin/bash
# nano init.sh
# chmod u+x init.sh
# ./init.sh

# Pedir el nombre de usuario y la contraseña
read -p 'Username: ' username
read -sp 'Password: ' password
echo

# Clonar el repositorio utilizando las credenciales
echo "Cloning the repository..."
git clone https://$username:$password@github.com/Humtherland/firefly-iii-backups.git
echo "Done!"

# Preguntar al usuario si desea hacer update y upgrade
read -p "Do you want to update and upgrade your system? (y/n): " answer
case $answer in
    [Yy]* )
        echo "Updating and upgrading the system..."
        sudo apt update && sudo apt upgrade -y
        echo "Update and upgrade completed!"
        ;;
    [Nn]* )
        echo "Skipping system update and upgrade."
        ;;
    * )
        echo "Please answer yes (y) or no (n)."
        ;;
esac

# Instalar Docker y Docker-compose
echo "Installing Docker and Docker-compose..."
sudo apt install -y docker docker-compose
echo "Docker and Docker-compose installation completed!"