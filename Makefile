# Adapted from Makefile for Sybila beamer theme: 
# https://github.com/sybila/beamer-theme.git

DEST_DIR=/usr/share/texmf/tex/latex/beamer/base/themes/theme
SOURCE_DIR=theme
TO_COPY=beamerthemeUH.sty UHMLogo.jpg uhm_bg.pdf

.PHONY: install
install:
	@echo " [beamer theme directory] $(DEST_DIR)"; \
	for FILE in $(TO_COPY); do\
		echo " [copy] $(SOURCE_DIR)/$$FILE"; \
		sudo cp "$(SOURCE_DIR)/$$FILE" "$(DEST_DIR)"; \
		sudo chmod +r "$(DEST_DIR)/$$FILE"; \
	done;\
	sudo texhash;\

.PHONY: uninstall
uninstall:
	@echo " [beamer theme directory] $(DEST_DIR)"; \
	for FILE in $(TO_COPY); do\
		echo " [remove] $(DEST_DIR)/$$FILE"; \
		sudo rm -f "$(DEST_DIR)/$$FILE"; \
	done;\
	sudo texhash;\
