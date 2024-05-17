# Linux first run deps:
# - apt install xclip

echo "  - Linux zsh"

alias copy="xclip -sel clip"

if [ -x "$(command -v setxkbmap)" ]; then
  setxkbmap -option caps:swapcaps
fi

export TERM="xterm-256color"
