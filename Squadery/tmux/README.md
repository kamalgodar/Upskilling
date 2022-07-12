## A Quick Guide on TMUX


Tmux is a terminal multiplexer for Unix-like operating system. It supports multiple terminal sessions within a single terminal window.
It facilitates execution of more than one command-line program at the same time.

### Why TMUX?

TMUX keeps windows and panes in a session. You can exit a session at any point. This is called “detaching”. Tmux will keep this session alive until you kill the tmux server (e.g. when you reboot). At any later point in time you can pick that session up exactly from where you left it by simply “attaching” to that session.

Installation
```bash
sudo apt-get install tmux
```

Start a new tmux session with green status bar at bottom
```bash
tmux
```

All commands in tmux are triggered by a prefix key followed by a command key.
Ctrl + b is the TMUX prefix key.



### Panes

Split pane with horizontal layout
```bash
tmux split-window -h
Ctrl + b %
```

Split pane with vertical layout
```bash
tmux split-window -v
Ctrl + b "
```

Switch between the panes
```bash
Ctrl + b ←/↓/↑/→
``` 

Show the pane number
```bash
Ctrl + b q
```

Switch to certain pane number
```bash
Ctrl + b q <number>
```

close the pane
```bash
exit / Ctrl + d
```


#### Windows
Windows are entirely a new space to work on (Panes and windows can be thoughts as tabs and windows of browser respectively.) 
Too many panes in one single windows is ineffective.

create new windows with default name 'bash'
```bash
Ctrl + b c
```

switch between the windows
```bash
Ctrl + b 0...9
```

Switch to previous window
```bash
Ctrl + b p
```

Switch to next window
```bash
Ctrl + b n
```

close current window
```bash
Ctrl + b &
```

rename the window
```bash
tmux rename-window 'windowname'
```

closes the window
```bash
exit 
```



#### Sessions

TMUX handles processes in the form of sessions. 
Session preserves the state of all processes running in that session. If we loose connection to server, we can get back to where we left off simply attaching the session. The processes won't be terminated and runs in the background. 

start a new session
```bash
tmux
```

start a new session with the session name
```bash
tmux new -s <session_name>
```

list sessions that are currently running
```bash
tmux ls
```

attach to last session
```bash
tmux attach
```

attach to a session with the name session_name
```bash
tmux attach -t <session_name>
```

rename the session
```bash
tmux rename-session -t <session_name> <new_name>
```

delete session with session name
```bash
tmux kill-session -t <session_name>
```

