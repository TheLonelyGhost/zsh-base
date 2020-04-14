# See http://zsh.sourceforge.net/Doc/Release/Options.html#Changing-Directories
setopt autopushd pushdminus pushdsilent pushdtohome
DIRSTACKSIZE=5

export MY_PLUGIN='tester'

# Enable extended globbing
setopt extendedglob
# Directories end in `/` when globs match them
setopt mark_dirs

# Allow [ or ] whereever you want
unsetopt nomatch
