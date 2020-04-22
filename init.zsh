this="${${(%):-%N}:A:h}"

if [ -e /usr/local/share/zsh/site-functions ]; then
  fpath=(/usr/local/share/zsh/site-functions $fpath)
fi
fpath=(~/.zsh/completion $fpath)

for lib in "$this"/libs/*.zsh; do
  source "$lib"
done

unset this
