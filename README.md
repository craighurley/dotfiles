# Craigs dotfiles

## Introduction
These dotfiles are based on [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles) and [this](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/) post on smalleycreative.com. 


## Installation

1. Install xcode from the app store.
2. Install code command line tools:
```bash
xcode-select --install
```

3. Install homebrew:
```bash
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
```

4. Install git
```bash
brew install git
```

5. Clone this repo:
```bash
git clone https://github.com/mathiasbynens/dotfiles.git ~/.dotfiles 
```

6. Run the following commands to apply settings and install applications
```bash
source ~/.dotfiles/bootstrap.sh
source ~/.dotfiles/.mkfileandfolders
source ~/.osx
source ~/.brew
source ~/.cask
```

7. Finally, restart your computer.


## Update
```bash
git pull origin master
```