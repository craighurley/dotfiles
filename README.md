# Craigs dotfiles


## Introduction
A collection of scripts to bootstrap a clean install of OS X.


## Installation

1. Install xcode from the app store.

2. Open xcode and accept the license agreement.

3. Install xcode command line tools:
    ```bash
    xcode-select --install
    ```

4. Clone this repo by running the following commands:
    ```bash
    mkdir ~/Projects
    git clone https://github.com/craighurley/dotfiles.git ~/Projects/dotfiles
    ```

5. Install homebrew and check by running the following command:
    ```bash
    ~/Projects/dotfiles/.brew_install
    ```

6. Run the following command to do everything.  _Note: you will be prompted for your password a number of times during script execution._
    ```bash
    ~/Projects/dotfiles/bootstrap.sh
    ```

    Essentially, `bootstrap.sh` executes the following commands:
    ```bash
    # Create useful directories.
    ~/Projects/dotfiles/.directories

    # Backup existing dotfiles and symlink to the dotfiles in this project.
    ~/Projects/dotfiles/.dotfiles

    # Copy templates to ~.  These files don't really belong in version control, hence they are not symlinked.
    ~/Projects/dotfiles/.templates

    # Configure sensible defaults in OS X.
    ~/Projects/dotfiles/.osx

    # Install command line package manager and additional command line tools.
    ~/Projects/dotfiles/.brew

    # Install command line package manager and additional applictions.
    ~/Projects/dotfiles/.cask

    # Install additional python modules.
    ~/Projects/dotfiles/.pip

    # Apply preferences to applications.
    ~/Projects/dotfiles/.preferences
    ```

7. Restart your computer.


## Update

    ```bash
    cd ~/Projects/dotfiles/
    git pull origin master
    ```


## Feedback
Suggestions/improvements [welcome](https://github.com/craighurley/dotfiles/issues)!


## Acknowedgements
* [Mathias Bynens](https://github.com/mathiasbynens)
