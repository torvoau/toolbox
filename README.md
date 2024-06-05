
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

 - Make configure idempotent and print changes
 - Install tree, bat, rg, ???
 - Tmux send keys before attach
 - Alias Tmux to re-open session
 - Clean up Neovim theme
 - Add independent installation
 - Remove vscode stuff
 - Add aggregate help
 - Implement neovim plugins and package management
