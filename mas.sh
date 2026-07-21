#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Ask for the administrator password upfront
sudo -v

# Applications
APPS=(
    1018301773  # AdBlock Pro
    1538761576  # Authenticator
    1056643111  # Clocker
    411643860   # DaisyDisk
    1384206666  # DemoPro
    302584613   # Kindle
    1661733229  # LocalSend
    441258766   # Magnet
    1295203466  # Microsoft Remote Desktop
    1289197285  # MindNode
    490179405   # Okta Verify
    1289583905  # Pixelmator Pro
    1507246666  # Presentify
    545519333   # Prime Video
    1529448980  # Reeder
    1276493162  # reMarkable
    803453959   # Slack
    1481853033  # Strongbox
    425424353   # The Unarchiver
    904280696   # Things3
    1278508951  # Trello
    1554515538  # TRex (OCR)
    1147396723  # WhatsApp
    1295203466  # Windows App
    1495643653  # WorkingHours
)

# Applications not needed immediately
#1451544217  # Adobe Lightroom
#824171161   # Affinity Designer
#824183456   # Affinity Photo
#1444383602  # GoodNotes
#1464122853  # NextDNS
#1295203466  # Windows App
#497799835   # Xcode

# Install applications
mas install "${APPS[@]}"

# Finished
echo "$(basename "$0") complete."
