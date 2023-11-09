#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Ask for the administrator password upfront
sudo -v

# Applications
APPS=(
    1538761576  # Authenticator
    1056643111  # Clocker
    411643860   # DaisyDisk
    1384206666  # DemoPro
    302584613   # Kindle
    441258766   # Magnet
    1295203466  # Microsoft Remote Desktop
    1289197285  # MindNode
    803453959   # Slack
    1481853033  # Strongbox
    425424353   # The Unarchiver
    904280696   # Things3
    1554515538  # TRex (OCR)
    1147396723  # WhatsApp
)

# Applications not needed immediately
#824171161   # Affinity Designer
#824183456   # Affinity Photo
#1444383602  # GoodNotes
#506189836   # Harvest
#1464122853  # NextDNS
#1278508951  # Trello

# Install applications
mas install "${APPS[@]}"

# Finished
echo "$(basename "$0") complete."
