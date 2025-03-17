# Development environment 


My development environment for
1. golang
2. typescript and react
3. rust
4. flutter
5. k8s
6. and other stuff


# TODO
1. include commands for docker, k8s, git in the cheat sheet
2. update scripts
3. automatically update tmux plugins
4. config vscode tabs backward and forward


## Apps
My development apps
1. vscode
2. zsh with oh my zsh
3. tmux
4. vim

In the dotfiles are included the dotfiles and the configuration for vscode
## Setup
1. Install the follow fonts (optional)
   1. [cascadia icons for terminal](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaMono.zip)
   2. [cascadia for vscode](https://github.com/microsoft/cascadia-code/releases)

2. instal foundation packages (mac)
```shell
# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install zsh
brew install zsh
brew install asdf

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerline10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# install some zsh packages
# syntax highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# peco
git clone https://github.com/jimeh/zsh-peco-history.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-peco-history
# copilot
git clone https://github.com/loiccoyle/zsh-github-copilot ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-github-copilot
```

3. Install dotfiles
   1. copy contents from dotfiles to `~/`
   2. open a shell o reload
   3. open tmux and install packages `super + I`
4. Update vscode
   1. import vscode profile

5. Install langs 
```shell
asdf plugin add python
asdf plugin add nodejs
asdf plugin add flutter
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin add rust https://github.com/code-lever/asdf-rust.git 
```

6. Install other apps (optional)
```shell
# install xcode utils
xcode-select --install

# switch between contexts
brew install kubectx

brew install ffmpeg
brew install watch
brew install htop
brew install --cask privileges
brew install --cask genymotion
brew install --cask android-platform-tools
```

## References
1. [oh my zsh](https://ohmyz.sh/#install)
2. tmux plugins
   1. [package manager](https://github.com/tmux-plugins/tpm)
   2. [dracula theme](https://github.com/dracula/tmux)
   3. [tmux navigator](https://github.com/christoomey/vim-tmux-navigator)