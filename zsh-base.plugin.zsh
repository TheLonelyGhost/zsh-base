this="${${(%):-%N}:A:h}"

if [ -e /usr/local/share/zsh/site-functions ]; then
  fpath=(/usr/local/share/zsh/site-functions $fpath)
fi
fpath=(~/.zsh/completion $fpath)

for lib in "$this"/libs/*.zsh; do
  source "$lib"
done

__hostname=$(uname -n)

chpwd() {
  if [ -t 1 ]; then
    if [ -e '/Library' ]; then
      /bin/ls -FG
    else
      ls -F --color=auto
    fi
  fi
}

precmd() {
  vcs_info

  if [ -e "${HOME}/.keychain/${__hostname}-sh" ]; then
    source "${HOME}/.keychain/${__hostname}-sh"
  fi
  if [ -e "${HOME}/.keychain/${__hostname}-sh-gpg" ]; then
    source "${HOME}/.keychain/${__hostname}-sh-gpg"
  fi
}

unset this
