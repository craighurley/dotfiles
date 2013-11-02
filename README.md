# Craigs dotfiles

## Introduction
These dotfiles are based on [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles) and [this](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/) post on smalleycreative.com. 


## Installation

1. Install xcode from the app store.  Open xcode and accept the license agreement.  TODO: find out how to accept the license via command line.
2. Install code command line tools:
```bash
xcode-select --install
```

3. Install homebrew and check that it's ready to go:
```bash
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
brew doctor
```

4. Install git:
```bash
brew install git
```

5. Clone this repo:
```bash
git clone https://github.com/craighurley/dotfiles.git ~/.dotfiles 
```

6. Run the following commands to backup your original dotfiles and symlink to the new dotfiles, then kill your terminal:
```bash
source ~/.dotfiles/bootstrap.sh
killall Terminal
```

7. Run the following commands:
```bash
source ~/.dotfiles/.brew
source ~/.dotfiles/.cask
source ~/.dotfiles/.osx
```

8. Finally, restart your computer.


## Update
```bash
cd ~/.dotfiles/
git pull origin master
```
