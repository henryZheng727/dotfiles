function fdoc
    if not type -q fzf
        echo "Install fzf to use this function."
        return 1
    end

    if not type -q tldr
        echo "Install tldr to use this function."
        return 1
    end

    set -l selection (tldr --list | fzf --preview "tldr {1} --color" --preview-window=right,70%)
    test -n "$selection"; and tldr $selection

end
