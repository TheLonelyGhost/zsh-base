# ZSH Settings (Base)

Extracted from [my dotfiles](https://github.com/thelonelyghost/dotfiles) as a zsh plugin, these represent some basic shell settings according to my preferences.

## Installation

zplug instructions:

```
zplug "thelonelyghost/zsh-base"
```

## What it does

- zsh history (think Ctrl-R)
  - size is extended to be more lines
  - stored in `~/.zhistory`
  - ignores duplicate command invocations
  - append to `~/.zhistory` as it happens, not at the end of the shell session
- `vi`-style keybindings, except certain exceptions:
  - Ctrl-A and Ctrl-E go to the beginning and end of the current line, respectively
  - Ctrl-K erases everything after the cursor
  - Ctrl-R searches prior command history, starting with most recent invocation matching the typed fragment
  - Ctrl-T re-queues the last command, but prefixed with `sudo`
- Allow `[` and `]` without unexpected shell expansion
- Enables extended globbing (e.g., `**/*`)
- Treat `# this is a comment` as an actual comment in the interactive shell session
