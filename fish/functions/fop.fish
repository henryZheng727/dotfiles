# fuzzily-find and open a file using fd and fzf
function fop
    if not type -q fzf
        echo "Install fzf to use this function."
        return 1
    end

    if not type -q fd
        echo "Install fd to use this function."
        return 1
    end

    set file (fd | fzf) && command xdg-open $file >/dev/null 2>&1 &

end
