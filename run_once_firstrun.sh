#!/bin/bash
# This file installs a few utilities I use day-to-day on first run of chezmoi
# as well as sets up oh-my-zsh properly
# This should run on first terminal open or prior, and should be hit before you land at a prompt


# Install oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s

# Install zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# Install bun
curl -fsSL https://bun.sh/install | SHELL=sh bash

# Link files if BlackBox terminal is being used
if [ "$TERM_PROGRAM" == "BlackBox" ]; then
  ln -sf $HOME/.config/tilix/themes/* $BLACKBOX_THEMES_DIR
fi
