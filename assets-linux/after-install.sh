#!/bin/bash

# Link to the binary
ln -sf /opt/HangoutsForDesktop/Hangouts /usr/local/bin/hangoutsfordesktop

# Launcher icon
desktop-file-install /opt/HangoutsForDesktop/hangoutsfordesktop.desktop
