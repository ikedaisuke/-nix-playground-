#/bin/sh
mkdir -p ~/.config/nix
[[ ! -f ~/.config/nix/nix.conf ]] && echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
