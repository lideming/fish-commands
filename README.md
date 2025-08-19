# My Random Fish Commands

Auto-completion for these commands are supported.

## Installation

Install using [fisher](https://github.com/jorgebucaran/fisher):

```
fisher install lideming/fish-commands
```

## cdg

`cd` into relative path of current git repo.

Example: (assuming `~/git/fish-commands` is the root of a git repo)

```
~/git/fish-commands/completions> cdg functions
~/git/fish-commands/functions>
```

## cdr

`cd` into any repository from anywhere.

Setup repo roots before using this command, multiple roots are supported:

```
set -U __git_repo_roots ~/git ~/projects
```

(`set -U` make it persist across shell restarts)

Examples:

```
~/git/fish-commands/completions> cdr dotfiles
~/git/dotfiles>
```

```
~/git/dotfiles> cdr fish-commands/functions
~/git/fish-commands/functions>
```
