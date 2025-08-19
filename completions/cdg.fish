complete -f -c cdg -a '(__cdg_complete)'

function __cdg_complete
    set -l current_word (commandline -t)
    set -l repo_root (git rev-parse --show-toplevel 2> /dev/null)
    if test -n "$repo_root"
        set -l dir_completions (__fish_complete_directories $repo_root/$current_word "Directory in Git repo")
        for line in $dir_completions ;
            string sub -s (math (string length $repo_root/) + 1) $line
        end
    end
end
