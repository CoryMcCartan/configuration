# colored prompt
# export PS1="\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;105m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"

# path
export PATH=$PATH:~/bin:.

source ~/.local/bin/bashmarks.sh

source ~/.functions
source ~/.env

# powerline
(powerline-daemon -q &) &> /dev/null
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# start TMUX if not already started
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

# Fix problems with terminal key mappings
stty -ixon

status
