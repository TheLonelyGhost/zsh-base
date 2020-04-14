# vim: ft=zsh

bindkey -A viins main

bindkey '^F' forward-word
bindkey '^B' backward-word

# Makes it so lines starting with '#' are ignored as if they are actual comment lines
setopt interactive_comments