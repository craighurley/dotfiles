# Craigs dotfiles


## Introduction
These dotfiles are based on [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles) and [this](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/) post on smalleycreative.com.


## Installation

1.1 Install xcode from the app store.
1.2 Open xcode and accept the license agreement.

2. Install code command line tools:
```bash
xcode-select --install
```

3. Install homebrew and check that it's ready to go:
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

4. Clone this repo by running the following commands:
```bash
mkdir ~/Projects
git clone https://github.com/craighurley/dotfiles.git ~/Projects/dotfiles
```

5. Run the following command to backup your original dotfiles and symlink to the new dotfiles, install brew and cask applications and finally make changes to some basic settings:
```bash
source ~/Projects/dotfiles/bootstrap.sh
```

Essentially, after setting up a basic folder structure, this step runs the following commands:
```bash
source ~/Projects/dotfiles/.brew
source ~/Projects/dotfiles/.cask
source ~/Projects/dotfiles/.osx
```

6. Link sublime text settings by running this command:
```bash
ln -s ~/Projects/dotfiles/sublimetext/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```

7. Restart your computer.

8. Make suitable manual changes in the following areas:
- System Preferences > Trackpad
- System Preferences > Spotlight
- System Preferences > Desktop & Screen Saver
- System Preferences > Dock
- System Preferences > Users & Groups
- Terminal

9. Open and configure the following applications:
- SpiderOak
- Stay
- BetterTouchTool


## Update
```bash
cd ~/Projects/dotfiles/
git pull origin master
```


## Feedback
Suggestions/improvements [welcome](https://github.com/craighurley/dotfiles/issues)!


## Acknowedgements
* [Mathias Bynens](https://github.com/mathiasbynens)
