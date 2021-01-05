if [ $commands[keychain] ]; then
  # Except when handling incoming SSH connections (you're on your own, in that case)...
  keychain --nogui --quiet --agents 'ssh,gpg' --inherit any
  export GPG_TTY="$(tty)"

  # this is a fast and an easy way to keep all the terminal tabs in sync with the latest GPG/SSH agent PIDs
  # if [ -e "${HOME}/.keychain/$(uname -n)-sh" ]; then
  #   source "${HOME}/.keychain/$(uname -n)-sh"
  # fi
  # if [ -e "${HOME}/.keychain/$(uname -n)-sh-gpg" ]; then
  #   source "${HOME}/.keychain/$(uname -n)-sh-gpg"
  # fi

  # We'll let ~/.ssh/config add our ssh keys on-the-fly with `AddKeysToAgent` property
fi
