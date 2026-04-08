#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
    local src="$1" dest="$2"
    mkdir -p "$(dirname "$dest")"
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        echo "removing existing $dest"
        rm -rf "$dest"
    fi
    ln -s "$src" "$dest"
    echo "linked $dest -> $src"
}

if command -v fish &>/dev/null; then
    link "$DOTFILES/fish" "$HOME/.config/fish"
fi

if command -v git &>/dev/null; then
    link "$DOTFILES/git" "$HOME/.config/git"
fi

if command -v kitty &>/dev/null; then
    link "$DOTFILES/kitty" "$HOME/.config/kitty"
fi

if command -v tmux &>/dev/null; then
    link "$DOTFILES/tmux" "$HOME/.config/tmux"
fi

if command -v nvim &>/dev/null; then
    link "$DOTFILES/nvim" "$HOME/.config/nvim"
fi

if command -v vim &>/dev/null; then
    vim_major=$(vim --version | head -1 | awk '{for(i=1;i<=NF;i++) if($i+0==$i){print int($i); exit}}')
    if [ "$vim_major" -ge 9 ]; then
        link "$DOTFILES/vim" "$HOME/.config/vim"
    else
        link "$DOTFILES/vim/vimrc" "$HOME/.vimrc"
    fi
fi
