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
Now add what ever you need to `.path` and `.extra`.
My `.path` looks like:
```bash
PATH="/some/path:$PATH"
export PATH
```
My `.extra` looks like this:
```bash
# Git credentials
GIT_AUTHOR_NAME="First Last"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="firs.last@email.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

7. Run the following commands to install apps and apply settings:
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


## Feedback

Suggestions/improvements [welcome](https://github.com/craighurley/dotfiles/issues)!


## Acknowedgements
* [Mathias Bynens](https://github.com/mathiasbynens)
