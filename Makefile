all:
	stow --verbose --target=$$HOME --restow home
	doas stow --verbose --target=/etc --restow etc

delete:
	stow --verbose --target=$$HOME --delete home
	doas stow --verbose --target=/etc --delete etc
