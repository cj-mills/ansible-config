#! /bin/bash

packages="git ansible"

printf "\n\nPerforming initial setup..."

printf "\n\nUpdating package cache...\n\n"
sudo apt update
sudo apt upgrade -y

printf "\n\nInstalling packages...\n\n"
sudo apt install $packages -y

# printf "\n\nUninstalling packages...\n\n"
# sudo apt remove $packages -y
# sudo apt autoremove -y

printf "\n\nRun Ansible configuration...\n\n"
ansible-pull -U https://github.com/cj-mills/ansible-config.git
