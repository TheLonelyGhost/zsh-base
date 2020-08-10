# vim: ft=zsh

bindkey -A viins main

# CTRL+X then E will open an editor in which to paste code which will be executed via the command line on exit
autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line

bindkey '^F' forward-word
bindkey '^B' backward-word

# Makes it so lines starting with '#' are ignored as if they are actual comment lines
setopt interactive_comments
