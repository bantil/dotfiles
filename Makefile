all:
	stow --verbose --target=$$HOME --restow */ --adopt

install-deps-deb:
	./configure_system.sh
	xargs sudo apt install -y < dependencies/deb.txt
	chsh -s $(which zsh)

install-deps-rhel:
	./configure_system.sh
	xargs sudo dnf install -y < dependencies/rhel.txt
	chsh -s $(which zsh)

install-deps-mac:
	./configure_system.sh
	xargs brew install < dependencies/mac.txt
	chsh -s $(which zsh)
