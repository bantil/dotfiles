all:
	stow --verbose --target=$$HOME --restow */

install-deps-deb:
	xargs sudo apt install -y < dependencies.txt
	sh install_zsh.sh

install-deps-rhel:
	xargs sudo dnf install -y < dependencies.txt
	sh install_zsh.sh