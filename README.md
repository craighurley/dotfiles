# dotfiles

[![Build Status](https://travis-ci.org/craighurley/dotfiles.svg?branch=master)](https://travis-ci.org/craighurley/dotfiles)

## Introduction

A collection of scripts to bootstrap a clean install of OS X.

## Installation

1. Install xcode from the app store.

1. Open xcode and accept the license agreement.

1. Install xcode command line tools:

    ```sh
    xcode-select --install
    ```

1. Clone this repo by running the following commands:

    ```sh
    mkdir ~/Projects
    git clone https://github.com/craighurley/dotfiles.git ~/Projects/dotfiles
    ```

1. Install homebrew by running the following command:

    ```sh
    ~/Projects/dotfiles/.brew_install
    ```

1. Run the following command to do everything.  _Note: you will be prompted for your password a number of times during script execution._

    ```sh
    ~/Projects/dotfiles/bootstrap.sh
    ```

    Essentially, `bootstrap.sh` executes the following commands:

    ```sh
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

    # Apply preferences to applications.
    ~/Projects/dotfiles/.preferences
    ```

1. Restart your computer.

## Update

Run the following commands to get the latest version of this project:

```sh
cd ~/Projects/dotfiles/
git pull origin master
```

## Feedback

Suggestions/improvements [welcome](https://github.com/craighurley/dotfiles/issues)!

## Acknowedgements

* [Mathias Bynens](https://github.com/mathiasbynens)
