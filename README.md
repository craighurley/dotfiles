# dotfiles

![lint](https://github.com/craighurley/dotfiles/workflows/lint/badge.svg)

## Introduction

A collection of scripts to bootstrap a clean install of macOS.

## Installation

1. Perform a _Software Update_.

1. Install xcode command line tools:

    ```sh
    xcode-select --install
    ```

1. If this is an Apple silicon machine, install Rosetta:

    ```sh
    softwareupdate --install-rosetta
    ```

1. Clone this repository by running the following commands:

    ```sh
    mkdir ~/Projects
    git clone https://github.com/craighurley/dotfiles.git ~/Projects/dotfiles
    ```

1. Install homebrew by running the following command:

    ```sh
    ~/Projects/dotfiles/.brew_install
    ```

1. Run the following command to do everything.

    ```sh
    ~/Projects/dotfiles/bootstrap.sh
    ```

    Notes:

    - you will be prompted for your password a number of times during script execution.

    Essentially, `bootstrap.sh` executes the following commands:

    ```sh
    # Create useful directories.
    ~/Projects/dotfiles/.directories

    # Copy templates to ~. These files don't really belong in version control, hence they are not symlinked.
    ~/Projects/dotfiles/.templates

    # Configure sensible defaults in macOS.
    ~/Projects/dotfiles/.macos

    # Install command line package manager and additional command line tools.
    ~/Projects/dotfiles/.brew

    # Install command line package manager and additional applications.
    ~/Projects/dotfiles/.cask

    # Open Firefox now, to generate the default profile.

    # Backup existing dotfiles and symlink to the dotfiles in this project.
    ~/Projects/dotfiles/.dotfiles

    # Apply preferences to applications.
    ~/Projects/dotfiles/.preferences
    ```

1. Restart your computer.

1. If you want to automatically install applications from the _App Store_, open the _App Store_ and sign in, then run the following command:

    ```sh
    ~/Projects/dotfiles/.mas
    ```

## Post Install Tasks

1. Import Terminal config.
1. Import iTerm config.
1. Import ssh keys.
1. Update details:
    - `~/.ssh/config`.
    - `~/.ssh/authorized_keys`.
    - `~/.gitconfig.custom` and any additional custom configurations.
    - `~/.extra`.
    - `~/.pypirc`.
    - `~/.aws/config`.
    - `~/.aws/credentials`.
    - `~/.saml2aws`.
1. Sign into Firefox account to sync settings.
1. Sign into Chrome account to sync settings.
1. Sign into GitHub in VS Code to sync settings.
1. Download/install binary apps:
    - https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
    - https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html
    - https://www.terraform.io/downloads.html
    - https://github.com/go-task/task/releases
    - https://github.com/awslabs/aws-cloudformation-template-formatter/releases/
    - https://github.com/hashicorp/go-getter/releases/
    - https://taskfalcon.org/index.html

## Update

Run the following commands to get the latest version of this project:

```sh
cd ~/Projects/dotfiles/
git pull origin master
```

## Feedback

Suggestions/improvements [welcome](https://github.com/craighurley/dotfiles/issues)!
