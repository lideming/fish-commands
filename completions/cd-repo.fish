complete -f -c cd-repo -a '(__cd-repo_complete)'

function __cd-repo_complete
    set -l current_word (commandline -t)
    for root in $__git_repo_roots ;
        set -l dir_completions (__fish_complete_directories $root/$current_word $root)
        for line in $dir_completions ;
            string sub -s (math (string length $root/) + 1) $line
        end
    end
end
