# Makefiles

dotfiles="dotfiles"

.PHONY: install
install:
	@make fonts
	@make dotinhome
	@make dotconfigs

.PHONY: fonts
fonts:
	@echo "Install Fonts"
	@sh ./.scripts/fonts.sh

.PHONY: dotinhome
dotinhome:
	@echo "Install configs to ~/.*"
	@sh ./.scripts/dotsinhome.sh $(dotfiles)

.PHONY: dotconfigs
dotconfigs:
	@echo "Install configs to ~/.config"
	@sh ./.scripts/dotconfigs.sh $(dotfiles)
