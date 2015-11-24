# allow ctrl-s mapping
stty -ixon

# colored prompt
# export PS1="\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;105m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"

source ~/.local/bin/bashmarks.sh

source ~/.functions
source ~/.env

# powerline
(powerline-daemon -q &) &> /dev/null
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# start TMUX if not already started
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

status
