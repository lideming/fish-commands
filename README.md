# My Random Fish Commands

Auto-completion for these commands are supported.

## Installation

Install using [fisher](https://github.com/jorgebucaran/fisher):

```
fisher install lideming/fish-commands
```

## git-cd

`cd` into relative path of current git repo.

Example: (assuming `~/git/fish-commands` is the root of a git repo)

```
~/git/fish-commands/completions> git-cd functions
~/git/fish-commands/functions>
```

## cd-repo

`cd` into any repository from anywhere.

Setup repo roots before using this command, multiple roots are supported:

```
set -U __git_repo_roots ~/git ~/projects
```

(`set -U` make it persist across shell restarts)

Examples:

```
~/git/fish-commands/completions> cd-repo dotfiles
~/git/dotfiles>
```

```
~/git/dotfiles> cd-repo fish-commands/functions
~/git/fish-commands/functions>
```
