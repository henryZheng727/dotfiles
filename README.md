# About
This repository stores my configuration files for Unix-like systems.

# Installation and Usage

The best way to manage these files is with [GNU Stow](https://www.gnu.org/software/stow/).
**Install GNU Stow using your system's package manager of choice.**
My file organization mimics that found in [this video](https://youtu.be/y6XCebnB9gs).

Then **clone this git repository** and change directories into it.
```sh
git clone https://github.com/henryZheng727/dotfiles.git
cd dotfiles
```

**Once you are in this repository**, you can use GNU Stow to install configuration files.
Each directory stores all the configuration files you'd need for that program.
For example, to install configuration files for Neovim, you'd type:
```sh
stow -t ~ nvim
```

You can type any number of directory names at the end of the command.


