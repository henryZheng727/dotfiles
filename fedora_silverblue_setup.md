Fedora Silverblue is my current daily driver. I wrote this guide mostly to remind myself how to fix all the annoying issues that seemed to pop up after installation. This guide is modeled after devangshekhawat's [Fedora 43 Post Install Guide](https://github.com/devangshekhawat/Fedora-43-Post-Install-Guide).

# Initial Setup
First, install necessary layered software and *only* necessary layered software. I recommend the three listed below. Layering software will make your system slower and more unstable compared to stock Silverblue, so I would recommend making a list of all your necessary software ahead of time to keep it as slim as possible.
```sh
rpm-ostree install distrobox kitty gnome-tweaks && systemctl reboot
```
I recommend Distrobox because it remedies the issue of bad command-line tooling essentially flawlessly. If you don't use the Kitty terminal emulator, feel free to skip out on installing it. There is a Wezterm Flatpak available, if you use that, although the creator doesn't like it. I prefer to have the terminal emulator tightly integrated with the host system, which is why I felt it was necessary to layer Kitty. GNOME Tweaks is only installed for more keybind remappings that aren't possible in default GNOME settings.

Enable Flathub, if you have not done so at installation (under the menu option "enable third-party repositories").
```sh
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

Install your important Flatpak apps. I find most, or all, of the following to be useful. The majority of these can be installed through the GNOME Software Center, although if you're unable to find anything, they can be installed via the Application ID from the terminal. I generally recommend using Flathub as the software source over the Fedora Linux Flatpaks, because Flathub is more popular and updated more regularly.
```
Name                Application ID
-------------------------------------------------------
Audacity            org.audacityteam.Audacity
Calibre             com.calibre_ebook.calibre
Extension Manager   com.mattjakeman.ExtensionManager
Google Chrome       com.google.Chrome
HandBrake           fr.handbrake.ghb
Kdenlive            org.kde.kdenlive
LibreOffice         org.libreoffice.LibreOffice
PDF Arranger        com.github.jeromerobert.pdfarranger
Slack               com.slack.Slack
Spotify             com.spotify.Client
Steam               com.valvesoftware.Steam
Sushi               org.gnome.NautilusPreviewer
Vesktop             dev.vencord.Vesktop
VLC                 org.videolan.VLC
VSCodium            com.vscodium.codium
Zen                 app.zen_browser.zen
Zoom                us.zoom.Zoom
```
Note that the majority of video files will *not* correctly play back using Sushi (the Files quick-look) unless you install Sushi via Flatpak, due to issues with proprietary codecs.

# Setting Up Gnome
## Settings
The GNOME Settings app allows for a surprisingly high amount of customization. I'll list out everything I changed from defaults.

Under the **Displays** category, I set Scale to 125% (because I'm on a laptop) and Night Light to be on and scheduled from Sunset to Sunrise.

Under the **Multitasking** category, I disable Hot Corner, and switch to Fixed Number of Workspaces. I use 4 workspaces, because GNOME's keybinds allow you to remap navigations only between the first four.

Under the **Appearance** category, I switch the Accent to Purple, and pick whatever Background image I like at the time.

Under the **Apps** category, I set my Default Apps. I set my default Web Browser to be Zen Browser and the default Music/Video apps to be VLC media player.

Under the **Keyboard** category, I set all my Keyboard Shortcuts. I prefer to disable any default shortcuts that I don't use, so the below list enumerates all keybinds on my system.
- Accessibility
    - *Turn zoom on or off*: `Super+Z`
- Navigation
    - *Move window to workspace 1*: `Shift+Super+1`
    - *Move window to workspace 2*: `Shift+Super+2`
    - *Move window to workspace 3*: `Shift+Super+3`
    - *Move window to workspace 4*: `Shift+Super+4`
    - *Switch to workspace 1*: `Super+1`
    - *Switch to workspace 2*: `Super+2`
    - *Switch to workspace 3*: `Super+3`
    - *Switch to workspace 4*: `Super+4`
- Screenshots
    - *Take a screenshot interactively*: `Print`
- Windows
    - *Close window*: `Super+Q`
    - *Toggle maximization state*: `Super+F`
    - *View split on left*: `Super+H`
    - *View split on right*: `Super+L`
- Custom Shortcuts
    - *Launch Kitty*: `Super+Return` will execute `kitty`
- Activities Overview Shortcut: Use the Super key to open the overview

## Extensions
If you've installed the Extension Manager Flatpak, then you can add some useful extensions to Gnome. Here's what I use.

**Alphabetical App Grid**: `AlphabeticalAppGrid@stuarthayhurst`. This sorts your App Grid alphabetically, which I find I prefer. I enable `Sort folder contents` with `Alphabetical` position of ordered folders.

**Caffeine**: `caffeine@patapon.info`. This will place a "Caffeine" option in your upper-left clickable panel, which will prevent your computer from going to sleep naturally. This is nice to avoid having to jiggle your mouse. Unfortunately, it doesn't seem to be able to keep your laptop awake upon closing the lid.

**Just Perfection**: This has a lot of useful UI tweaks. I use very few of them. Under the "Customize" submenu, you can choose to disable animation. I chose to do so, because it felt vaguely unnecessary and sluggish.

**Launch New Instance**: This launches a new instance of an app when you click it, rather than pulling your focus to an existing instance.

**Space Bar**: This enables an i3-like workspace bar in the upper left of your screen. I keep most of the settings default, but I disabled all the Shortcuts in the menu, as they conflicted heavily with my existing keybinds in Settings, and felt significantly more unreliable than the GNOME Settings rebinds.

## Tweaks
I layered GNOME Tweaks because there is not a Flatpak available for it. I only use it for one thing. In the Keyboard menu, under Additional Layout Options, you can choose to make Caps Lock an additional Ctrl and Shift + Caps Lock the regular Caps Lock.

# Setting Up Distrobox
This is absolutely critical for working with command line tooling. I recommend using an Arch distrobox, because the instability is relatively inconsequential for containerized terminal applications (when compared to breaking a desktop environment), and the software availability is very high.

Create and enter your Arch distrobox:
```sh
distrobox create --name arch --image archlinux
distrobox enter arch
```

Your first course of action should be to install the `yay` package manager.
```sh
sudo pacman -S base-devel git # install developer tools
git clone https://aur.archlinux.org/yay-bin.git # clone and install yay
cd yay-bin
makepkg -si
cd .. && rm -rf yay-bin # remove build artifacts
```

Your Arch distrobox should now be working, batteries included. I recommend adding the following to your `~/.bashrc` file, to automatically run your distrobox upon opening a terminal:
```sh
# enter distrobox by default
if command -v distrobox >/dev/null 2>&1
then
	distrobox list | grep -w "arch" > /dev/null
	if [ $? -eq 0 ]; then
		distrobox enter arch
	fi
fi
```

This allows you to use your terminal essentially as though you were on an Arch machine without worrying about re-entering the distrobox every time. If you don't like this, a good intermediate would be to create an easy alias for `distrobox enter arch` (I use `dba`). If you ever need to access the host terminal, you can just exit the distrobox with `exit` or CTRL-D like normal, which will put you in the host terminal.
