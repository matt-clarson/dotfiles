# Dotfiles

Files for dots or something.

## Setup

The following is instructions for setting up on MacOS. Mileage will vary on Linux distros.

The config here, specifically the NVim config, is focused on developing using Typescript, React, and Golang.  
It shouldn't be too hard to modify it to work with other languages.

### Brew

First, make sure [brew](brew.sh) is installed:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

We will use brew to install everything else we need.

### iTerm

```bash
brew install --cask iterm2
```

The first thing to set up is iTerm2.  
There are fonts to install to setup the terminal - particularly, the tmux and nvim setup here requires the use of special fonts that have utf icons loaded in as well as regular characters. [They can be found here](https://www.nerdfonts.com/font-downloads). I like FiraCode, but pick whatever font you like.  
Load the iTerm profiles in this repo (`iterm-light.json` and `iterm-dark.json`), by opening iTerm and clicking `iTerm2 > Preferences > Profiles`, then in the bottom right click `More Actions` and then `Import JSON Profiles...`.  
The profiles here use the [rose-pine](https://rosepinetheme.com/) theme, which is also setup on Nvim. Again, though, feel free to set this to whatever you like.

### Tmux

```bash
brew install tmux
```

Next up is tmux. First we need to put the tmux config in the right place:

```bash
ln -s $PWD/.tmux.config $HOME/.tmux.config
```

Then install the tmux plugin manager, and launch tmux:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
```

Once open, you can run `tmux source ~/.tmux.config` to load the config file, and then press `<C-b> I` to install the plugins it specifies - this can take a few seconds.

**If you get a weird bug where pressing `<backspace>` in a new tmux window inserts a `<space>`, do the following:**

```bash
brew install ncurses
# then
/usr/local/opt/ncurses/bin/infocmp tmux-256color > ~/tmux-256color.info
# or, if brew is installed in /opt/homebrew
/opt/homebrew/opt/ncurses/bin/infocmp tmux-256color > ~/tmux-256color.info

cd ~
tic -xe tmux-256color tmux-256color.info
```

### ZSH

The ZSH config is pretty lightweight - you just need to put the config in-place and source it:

```bash
ln -s $PWD/.zshrc $HOME/.zshrc
source $HOME/.zshrc
```

### Nvim

```bash
brew install neovim
```

Finally we can setup nvim. We need to install [lazygit](https://github.com/jesseduffield/lazygit), [Vim-Plug](https://github.com/junegunn/vim-plug), and setup the config files:

```bash
# lazygit
brew install lazygit
# Vim-Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# config files
mkdir -p $HOME/.config/nvim
ln -s $PWD/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -s $PWD/.config/nvim/lua $HOME/.config/nvim/lua
```

Then start nvim (run `nvim`), ignore the errors that display and run `:PlugInstall` to install the plugins.  
Quit Nvim once the install completes, then re-open it and everything should be good, with no errors!

#### Language Setup

As mentioned above, this setup is for Typescript and Golang. It uses plugins that expect some language specific tools to be installed on the system.

For Typescript:

```bash
brew install pnpm
pnpm env use --global lts # stable node
# pnpm env use --global latest # experimental node

pnpm add -g typescript typescript-language-server eslint prettier
```

For Golang:

```bash
brew install go

go install golang.org/x/tools/gopls@latest
```

### Mappings

This setup provides the following mappings/commands:

| Mapping      | Function                 | Docs                                                                                         |
| ------------ | ------------------------ | -------------------------------------------------------------------------------------------- |
| `<leader>ff` | `Telescope find_files`   | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                           |
| `<leader>fb` | `Telescope file_browser` | [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) |
| `<leader>xx` | `TroubleToggle`          | [trouble.nvim](https://github.com/folke/trouble.nvim)                                        |
| `<leader>xc` | `TroubleClose`           | [trouble.nvim](https://github.com/folke/trouble.nvim)                                        |
| `<leader>gg` | `LazyGit`                | [lazygit](https://github.com/jesseduffield/lazygit)                                          |
| `<leader>pf` | `PrettierAsync`          | [vim-prettier](https://github.com/prettier/vim-prettier)                                     |
