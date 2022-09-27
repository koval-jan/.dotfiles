SHELL = /bin/bash
.DEFAULT_GOAL = usage
ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY: bash git screen spacemacs ssh tmux vim

usage:
		@echo "USAGE:"
		@echo "  bash"
		@echo "  git"
		@echo "  screen"
		@echo "  spacemacs"
		@echo "  ssh"
		@echo "  tmux"
		@echo "  vim"

bash:
		@echo "bash";
		@cd $(ROOT_DIR); \
		stow -t ${HOME} bash;

git:
		@echo "git"
		@cd $(ROOT_DIR); \
		stow -t ${HOME} git;

screen:
		@echo "screen";
		@cd $(ROOT_DIR); \
		stow -t ${HOME} screen;

spacemacs:
		@echo "spacemacs";
		@mkdir -p ${HOME}/.local/share/systemd/user;\
		cd $(ROOT_DIR); \
		stow -t ${HOME} spacemacs;

ssh:
		@echo "ssh";
		cd $(ROOT_DIR); \
		stow -t ${HOME} ssh;

tmux:
		@echo "tmux";
		@cd $(ROOT_DIR); \
		stow -t ${HOME} tmux;

vim:
		@echo "vim"
		@cd $(ROOT_DIR); \
		stow -t ${HOME} vim;
