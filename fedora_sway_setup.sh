#!/bin/bash

# this script will make your life easier to get setup from fedora sway spin
# it presumes a completely default installation with nothing else done
# it is not guaranteed to work if you have made modifications already
# or are on another system

# make DNF less mid
printf "\
# see \`man dnf.conf\` for defaults/options\n\
[main]\n\
defaultyes=true\n\
max_parallel_downloads=10\n\
color=always\n\
" | sudo tee /etc/dnf/dnf.conf
printf "Fixed DNF!"

# make your battery not suck
sudo dnf install tlp -y || exit
# systemctl enable tlp.service || exit
echo "Enabled TLP!"

# copy dotfiles
sudo dnf install git stow || exit
cd ~ || exit
mkdir software || exit
cd software || exit
git clone https://github.com/henryzheng727/dotfiles.git || exit
cd dotfiles || exit

# download and set up terminal
sudo dnf install \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    kitty \
    fastfetch \
    figlet \
    -y || exit
chsh -s "$(which zsh)" || exit
stow -t ~ kitty zsh || exit

# download major terminal apps
sudo dnf install neovim ranger pandoc gh -y || exit

# install dotfiles for rofi, sway
stow -t ~ sway rofi || exit

# download flatpaks that i use
sudo dnf install flatpak || exit
flatpak remote-add --if-not-exists flathub \
    https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub \
    app.zen_browser.zen \
    com.calibre_ebook.calibre \
    com.github.tchx84.Flatseal \
    com.google.Chrome \
    com.spotify.Client \
    com.vscodium.codium \
    dev.vencord.Vesktop \
    md.obsidian.Obsidian \
    org.libreoffice.LibreOffice \
    com.valvesoftware.Steam || exit
echo "Installed important Flatpak apps!"

# todo - find some way to backup and restore ~
# pika backup or borg may be useful. borg with rsync would be nice

# remove unnecessary apps
sudo dnf remove firefox foot

# launch a new terminal
kitty
