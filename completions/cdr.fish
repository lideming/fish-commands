complete -f -c cdr -a '(__cdr_complete)'

function __cdr_complete
    set -l current_word (commandline -t)
    for root in $__git_repo_roots ;
        set -l dir_completions (__fish_complete_directories $root/$current_word $root)
        for line in $dir_completions ;
            string sub -s (math (string length $root/) + 1) $line
        end
    end
end
