all:
	stow --verbose --target=$$HOME --restow */ --adopt

install-deps-deb:
	xargs sudo apt install -y < dependencies/deb.txt
	sh configure_system.sh

install-deps-rhel:
	xargs sudo dnf install -y < dependencies/rhel.txt
	sh configure_system.sh

install-deps-mac:
	xargs brew install < dependencies/mac.txt
	sh configure_system.sh