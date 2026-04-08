function fcd
    if not type -q fzf
        echo "Install fzf to use this function."
        return 1
    end

    if not type -q fd
        echo "Install fd to use this function."
        return 1
    end

    set dir (fd . --type d | fzf) && cd $dir

end
