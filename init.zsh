this="${${(%):-%N}:A:h}"

fpath=("${this}/theme" $fpath)
autoload -Uz promptinit
promptinit

for lib in "$this"/libs/*.zsh; do
  source "$lib"
done

unset this
