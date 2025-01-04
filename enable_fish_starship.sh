#!/bin/bash

# Exit on errors
set -e

echo "Installing Fish shell and dependencies..."

# Step 1: Install Fish shell
if ! command -v fish >/dev/null 2>&1; then
    echo "Fish shell not found. Installing Fish..."
    brew install fish
else
    echo "Fish is already installed."
fi

# Step 2: Add Fish to /etc/shells
FISH_PATH=$(which fish)
if ! grep -q "$FISH_PATH" /etc/shells; then
    echo "Adding Fish to /etc/shells..."
    echo "$FISH_PATH" | sudo tee -a /etc/shells
else
    echo "Fish is already listed in /etc/shells."
fi

# Step 3: Change default shell to Fish
if [[ "$SHELL" != "$FISH_PATH" ]]; then
    echo "Changing default shell to Fish..."
    chsh -s "$FISH_PATH"
else
    echo "Fish is already the default shell."
fi

# Step 4: Install Fisher (Plugin Manager)
if ! command -v fisher >/dev/null 2>&1; then
    echo "Installing Fisher..."
    curl -sL https://git.io/fisher | source && fish -c "fisher install jorgebucaran/fisher"
else
    echo "Fisher is already installed."
fi

# Step 5: Install Fish plugins
echo "Installing Fish plugins..."
fish -c "fisher install jethrokuan/z"
fish -c "fisher install jethrokuan/fzf"
fish -c "fisher install PatrickF1/fzf.fish"

# Step 6: Configure Fish shell
CONFIG_DIR="$HOME/.config/fish"
CONFIG_FILE="$CONFIG_DIR/config.fish"

echo "Creating Fish configuration directory..."
mkdir -p "$CONFIG_DIR"

echo "Writing Fish configuration..."
cat > "$CONFIG_FILE" <<EOF
# Initialize Starship prompt
eval (starship init fish)

# Set environment variables
set -U EDITOR nvim

# Aliases
alias ex="exercism"
alias ls="lsd"
alias vim="nvim"
alias look="history | fzf"
alias cat="bat -P"
alias k="kubectl"
alias ff="fastfetch"
alias kb="kubebuilder"
alias sys="systemctl"
alias split="zellij"
alias stream="systemctl restart --user streamdeck.service"

# Fisher plugins
fisher install jethrokuan/z
fisher install jethrokuan/fzf
fisher install PatrickF1/fzf.fish
EOF

# Step 7: Install Starship prompt
if ! command -v starship >/dev/null 2>&1; then
    echo "Installing Starship prompt..."
    brew install starship
else
    echo "Starship is already installed."
fi

echo "Setup complete! Please restart your terminal for the changes to take effect."

