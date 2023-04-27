function cd-repo
    set -l folder $argv[1]
    for root in $__git_repo_roots ;
        if test -d "$root/$folder" ;
            echo Entering "$root/$folder"
            cd "$root/$folder"
            return 0
        end
    end
    echo "Error: repo not found in all repo roots" >&2
    return 1
end
