function git-cd
    set -l repo_root (git rev-parse --show-toplevel 2> /dev/null)
    if test -n "$repo_root"
        set -l folder $argv[1]
        cd "$repo_root/$folder"
    else
        echo "Error: not inside a Git repository" >&2
        return 1
    end
end
