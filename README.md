# Neovim

## Setup

### Step 1: Place the init.vim file at `~/.config/nvim` folder.

### Step 2: Install Vim Plug to install the vim plugins using below command.
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Step 3: Install all the plugins from init.vim file
Go to Neovim editor and run the command PlugInstall

### Step 4: Install COC Nvim for auto completion
Change directory to `~/AppData/Local/nvim/site/plugged/coc.nvim` where COC nvim plugin is installed and run `yarn install` to install the required packages for COC plugin.

### Step 5: Install COC-Pyright Nvim for auto completion
Change directory to `~/AppData/Local/nvim/site/plugged/coc-pyright` where COC Pyright plugin is installed and run `yarn install` to install the required packages for COC Pyright plugin.
