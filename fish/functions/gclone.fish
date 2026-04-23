# wrapper around git clone to allow cloning from GitHub using a shorter syntax
function gclone
    if test (count $argv) -lt 1 -o (count $argv) -gt 2
        echo "gclone: usage: gclone <author/repo> [dir_name]" >&2
        return 1
    end

    set repo $argv[1]

    if not string match -qr '^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$' -- $repo
        echo "gclone: invalid format, expected <author/repo>" >&2
        return 1
    end

    set url "https://github.com/$repo"

    if test (count $argv) -eq 2
        git clone -- $url $argv[2]
    else
        git clone -- $url
    end
end
