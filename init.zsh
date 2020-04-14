this="${${(%):-%N}:A:h}"

for lib in "$this"/libs/*.zsh; do
  source "$lib"
done

unset this
