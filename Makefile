all:
	stow --verbose --target=$$HOME --restow */ --adopt

install-deps-deb:
	xargs sudo apt install -y < dependencies.txt
	sh configure_system.sh

install-deps-rhel:
	xargs sudo dnf install -y < dependencies-rhel.txt
	sh configure_system.sh
