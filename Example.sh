i3-msg 'workspace 9; append_layout ~/Path/To/Workspaces/Example.json'
i3-msg 'workspace 9; exec "i3-sensible-terminal -e zsh -is eval cd ~/Path/To/Project\; vim"'
sleep .1
i3-msg 'workspace 9; exec "i3-sensible-terminal -e zsh -i eval cd ~/Path/To/Project"'
i3-msg 'workspace 9; exec qutebrowser'
