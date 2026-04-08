function mcd
    if test (count $argv) -ne 1
        echo "mcd: expected 1 argument, got "(count $argv) >&2
        return 1
    end
    mkdir -p $argv[1] && cd $argv[1]
end
