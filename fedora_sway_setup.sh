# this script will make your life easier to get setup from fedora sway spin
# it presumes a completely default installation with nothing else done
# it is not guaranteed to work if you have made modifications already

# make DNF less mid
echo "# see \`man dnf.conf\` for defaults/options" | sudo tee /etc/dnf/dnf.conf
echo "[main]" | sudo tee -a /etc/dnf/dnf.conf
echo "defaultyes=true" | sudo tee -a /etc/dnf/dnf.conf
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
echo "color=always" | sudo tee -a /etc/dnf/dnf.conf

# make your battery not suck
sudo dnf install tlp
# TODO - make it run on startup

# remove unnecessary apps
sudo dnf remove firefox

# download and install dotfiles for all major non-flatpak apps
# TODO - set up zsh and maybe starship?
sudo dnf install git stow fastfetch neovim steam ranger kitty
cd ~
mkdir software
cd software
git clone https://github.com/henryzheng727/dotfiles.git
cd dotfiles
stow -t ~ neovim kitty

# download flatpaks that i use
sudo dnf install flatpak
flatpak remote-add --if-not-exists flathub \
    https://dl.flathub.org/repo/flathub.flatpakrepo
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
    rg.gimp.GIMP \
    org.kde.kalk \
    org.kde.kdenlive \
    org.kde.krita \
    org.libreoffice.LibreOffice \
    org.videolan.VLC \
    us.zoom.Zoom
