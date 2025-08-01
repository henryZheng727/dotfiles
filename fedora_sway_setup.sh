#!/bin/bash

# this script will make your life easier to get setup from fedora sway spin
# it presumes a completely default installation with nothing else done
# it is not guaranteed to work if you have made modifications already
# or are on another system

# make DNF less mid
echo "# see \`man dnf.conf\` for defaults/options" | sudo tee /etc/dnf/dnf.conf
echo "[main]" | sudo tee -a /etc/dnf/dnf.conf
echo "defaultyes=true" | sudo tee -a /etc/dnf/dnf.conf
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
echo "color=always" | sudo tee -a /etc/dnf/dnf.conf
sudo dnf update
echo "Fixed DNF!"

# make your battery not suck
sudo dnf install tlp || exit
systemctl enable tlp.service || exit
echo "Enabled TLP!"

# download and install dotfiles for all major non-flatpak apps
# TODO - set up zsh and maybe starship?
sudo dnf install git stow fastfetch neovim ranger kitty pandoc
cd ~ || exit
mkdir software
cd software || exit
git clone https://github.com/henryzheng727/dotfiles.git || exit
cd dotfiles || exit
stow -t ~ neovim kitty || exit
echo "Stowed dotfiles and installed terminal apps!"

# download flatpaks that i use
sudo dnf install flatpak || exit
flatpak remote-add --if-not-exists flathub \
    https://dl.flathub.org/repo/flathub.flatpakrepo || exit
flatpak install flathub \
    app.zen_browser.zen \
    com.calibre_ebook.calibre \
    com.github.jeromerobert.pdfarranger \
    com.github.tchx84.Flatseal \
    com.google.Chrome \
    com.obsproject.Studio \
    com.spotify.Client \
    com.vscodium.codium \
    dev.vencord.Vesktop \
    fr.handbrake.ghb \
    md.obsidian.Obsidian \
    org.audacityteam.Audacity \
    org.gimp.GIMP \
    org.kde.kdenlive \
    org.kde.krita \
    org.libreoffice.LibreOffice \
    org.videolan.VLC \
    us.zoom.Zoom \
    com.valvesoftware.Steam || exit
echo "Installed important Flatpak apps!"

# todo - find some way to backup and restore ~
# pika backup or borg may be useful. borg with rsync would be nice

# remove unnecessary apps
sudo dnf remove firefox foot
