all:
	./configure_system.sh
	stow --verbose --target=$$HOME --restow */ --adopt
	chsh -s /bin/zsh