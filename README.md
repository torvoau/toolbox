
# Toolbox

Scripts and files used for setting up my dev environment

# Usage

```
# Install to /usr/local/bin/toolbox
git clone --depth 1 https://github.com/torvodev/toolbox.git && cd toolbox && sudo ./toolbox install

# Add to ~/.bash_profile to run on terminal start
toolbox configure

# Run manually
toolbox run
```

# Todo

 - Show branch and changes in terminal if git repo
 - Add left indent pane 
 - Bind comment shortcut?
 - Check speed of github theme
 - Ctrl + C and run last command
 - Make sure new window is to the right of this one not at the end?
 - Open new file on edit empty path?
 - Exit on Vim Exit?
 - Make new window name not finder
 - Fix random characters in Vim: https://github.com/neovim/neovim/issues/28776
 - Make configure idempotent and print changes
 - Install tree, bat, rg, ???
 - Tmux send keys before attach
 - Alias Tmux to re-open session
 - Clean up Neovim theme
 - Add independent installation
 - Remove vscode stuff
 - Add aggregate help
 - Implement neovim plugins and package management

# Colours

primary:
    background: '0x30363d'
    foreground: '0xe6edf3'
cursor:
    text: '0x30363d'
    cursor: '0xe6edf3'
normal:
    black: '0x484f58'
    red: '0xff7b72'
    green: '0x3fb950'
    yellow: '0xd29922'
    blue: '0x58a6ff'
    magenta: '0xbc8cff'
    cyan: '0x39c5cf'
    white: '0xb1bac4'
bright:
    black: '0x6e7681'
    red: '0xffa198'
    green: '0x56d364'
    yellow: '0xe3b341'
    blue: '0x79c0ff'
    magenta: '0xbc8cff'
    cyan: '0x39c5cf'
    white: '0xb1bac4'
