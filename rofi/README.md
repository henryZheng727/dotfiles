# About
These are my dotfiles for rofi.
They will work if you are also using the Sway desktop environment.
Some functionality may break if you are not.

Install the dotfiles using
```sh
stow -t ~ rofi sway
```

# Usage
To access all possible functionality, type `rofi -show modes`.
This will also be bound to `Super + Space` if you're using my sway dotfiles.
This will show all possible rofi modes for all possible functionality.

To see a list of exit options, type `rofi -show exit`.
This will also be bound to `Super + E` if you're using my sway dotfiles.
This will allow you to power off, reboot, or log out.
Note that the log out functionality depends on you also using sway.
It will not work for other desktop environments.



# Dependencies
The `exit.sh` custom script relies on `shutdown`, `reboot`, and `swaymsg`.

