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
There are fonts to install to setup the terminal - particularly, the nvim setup here requires the use of special fonts that have utf icons loaded in as well as regular characters. [They can be found here](https://www.nerdfonts.com/font-downloads). I like FiraCode, but pick whatever font you like.  
Load the iTerm profiles in this repo (`iterm-light.json` and `iterm-dark.json`), by opening iTerm and clicking `iTerm2 > Preferences > Profiles`, then in the bottom right click `More Actions` and then `Import JSON Profiles...`.  
The profiles here use the [rose-pine](https://rosepinetheme.com/) theme, which is also setup on Nvim. Again, though, feel free to set this to whatever you like.

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

Finally we can setup nvim. We need to install [lazygit](https://github.com/jesseduffield/lazygit), and setup the config files:

```bash
# lazygit
brew install lazygit
# config files
mkdir -p $HOME/.config/nvim
ln -s $PWD/.config/nvim $HOME/.config/nvim
```

Then start nvim (run `nvim`), and wait for the installers to run.

#### Language Setup

As mentioned above, this setup is for Typescript, Rust, and Golang. It uses plugins that expect some language specific tools to be installed on the system.

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

For Rust:

```bash
# rustup is the rust toolchain manager
brew install rust-up
# this bootstraps an initial rust installation
rustup-init

# rust-analyzer is the official rust lsp implementation
brew install rust-analyzer
```

