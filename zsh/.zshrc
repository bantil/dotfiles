# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="mommy-ei"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git history kubectl)

source $ZSH/oh-my-zsh.sh

# to add more aliases without editing this main file, add them in ~/.zshrc.additions
EXTRA_ALIASES=~/.zshrc.additions && test -f $EXTRA_ALIASES && source $EXTRA_ALIASES

###### motd #####
#
current_host=$(hostname -s)
figlet -f $HOME/smslant.flf $current_host

echo ""
fortune
echo ""

# aliases
alias sd='sudo shutdown -h now'
alias rsaudio='pacmd unload-module module-udev-detect && pacmd load-module module-udev-detect'
alias rsnm='sudo systemctl restart NetworkManager'
alias k="/usr/local/bin/kubectl"
alias dev='cd ~/projects'
alias dots='cd ~/dotfiles'
alias dps='docker ps'
alias gclean='git reset --hard && git clean -fd'

dgo() {
	docker exec -it --user www-data "$1" bash
}

kgo() {
	kubectl exec -it "$1" bash
}

clbin() {
	curl -F 'clbin=<-' https://clbin.com
}

qrgen() {
	qrencode "$1" -o /tmp/qr.png && xdg-open /tmp/qr.png
}

# go alias
export PATH="${HOME}/.local/bin:${PATH}"
export PATH=$PATH:/usr/local/go/bin

# nvm alias
export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# alias for rofi scripts
export PATH=$HOME/.config/rofi/scripts:$PATH