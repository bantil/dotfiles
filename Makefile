all:
	stow --verbose --target=$$HOME --restow */

install-deps-deb:
	xargs sudo apt install <dependencies.txt

install-deps-rhel:
	xargs sudo dnf install <dependencies.txt