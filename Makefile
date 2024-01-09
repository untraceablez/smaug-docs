.DEFAULT_GOAL := serve
.PHONY: all first-setup serve
.PHONY: clean
.PHONY: help

VENV_DIR := $(HOME)/smaug-docs/smaug-docs
REQS := requirements.txt
BIN := $(VENV_DIR)/Scripts
PYTHON := python

first-install:
	@echo "Creating virtual environment..."
	python3 -m venv $(VENV_DIR)
	$(MAKE) install-dev
	@echo "Please run this command to activate smaug-docs:"
	@echo "source $(VENV_DIR)/bin/activate"
	@echo "You can now run \"make\" to get mkdocs running."


install-dev: activate-venv
	# Activate virtual environment directly
	@echo "Inside virtual environment..."

	# Install project requirements using pip
	$(VENV_DIR)/bin/pip install --upgrade pip
	$(VENV_DIR)/bin/pip install -r $(REQS)

activate-venv:
	source $(VENV_DIR)/bin/activate


serve:
	@echo "Building mkdocs documentation..."
	mkdocs build
	@echo "Serving mkdocs documentation..."
	mkdocs serve

clean:
	rm -rf $(VENV_DIR)

.PHONY: help
help:
	@echo "Available Commands:"
	@echo "clean - removes the venv directory entirely"
	@echo "first-install - Runs first time installation"
	@echo "help - runs this command"
	@echo "install-dev - installs mkdocs in venv"
	@echo "serve - runs mkdocs build and mkdocs serve"
