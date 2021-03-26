if [ $commands[direnv] ]; then
  eval "$(direnv hook zsh)"
  precmd_functions+=(_direnv_hook)
fi
