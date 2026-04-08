if status is-interactive
    if type -q nvim
        set -gx EDITOR nvim
    end

    if type -q starship
        eval (starship init fish)
    end

    if type -q fzf
        eval (fzf --fish)
    end

    # aura farming
    if type -q fastfetch
        fastfetch
    end

    # abbreviations
    abbr cade 'ssh u1340759@lab1-20.eng.utah.edu'
end


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/henryzheng/.opam/opam-init/init.fish' && source '/home/henryzheng/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
