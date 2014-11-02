# Craigs dotfiles


## Introduction
A collection of scripts to bootstrap a clean install of OS X.


## Installation

1 Install xcode from the app store.

2 Open xcode and accept the license agreement.

3 Install code command line tools:
```bash
xcode-select --install
```

4 Install homebrew and check that it's ready to go:
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

5 Clone this repo by running the following commands:
```bash
mkdir ~/Projects
git clone https://github.com/craighurley/dotfiles.git ~/Projects/dotfiles
```

6 Run the following command to do everything.  _Note: you will be prompted for your password a number of times during script execution._
```bash
~/Projects/dotfiles/bootstrap.sh
```

Essentially, `bootstrap.sh` executes the following commands:
```bash
# Create some useful directories.
~/Projects/dotfiles/.directories

# Backup existing dotfiles and symlink to the dotfiles in this project.
~/Projects/dotfiles/.dotfiles

# Copy some templates to ~.  These files don't really belong in version control.
~/Projects/dotfiles/.templates

# Configure some sensible defaults in OS X.
~/Projects/dotfiles/.osx

# Install command line tools.
~/Projects/dotfiles/.brew

# Install applictions.
~/Projects/dotfiles/.cask

# Install useful python modules.
~/Projects/dotfiles/.pip

# Apply preferences to applications.
~/Projects/dotfiles/.preferences
```

7 Restart your computer.


## Update
```bash
cd ~/Projects/dotfiles/
git pull origin master
```


## Feedback
Suggestions/improvements [welcome](https://github.com/craighurley/dotfiles/issues)!


## Acknowedgements
* [Mathias Bynens](https://github.com/mathiasbynens)
