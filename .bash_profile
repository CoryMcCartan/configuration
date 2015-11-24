# powerline
powerline-daemon -q

# run bashrc
source ~/.bashrc

# empty items in trash if they have been there for more than 30 days
# empty-trash

# happy birthday
date | grep 'Apr 25' && osascript -e 'tell app "System Events" to display
dialog "Happy Birthday!"'
