#!/usr/bin/env make

.DEFAULT_GOAL := help

MD_LINT_CONTAINER := craighurley/markdownlint-cli:latest
SHELLCHECK_CONTAINER := craighurley/shellcheck:latest
YAML_LINT_CONTAINER := craighurley/yamllint:latest

TARGET_MAX_CHAR_NUM := 20

## Print this help
help:
	@echo 'Usage:'
	@echo '  make <target>'
	@echo ''
	@echo 'Targets:'
	@awk '/(^[a-zA-Z\-\.\_0-9]+:)|(^###[a-zA-Z]+)/ { \
		header = match($$1, /^###(.*)/); \
		if (header) { \
			title = substr($$1, 4, length($$1)); \
			printf "%s\n", title; \
		} \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "  %-$(TARGET_MAX_CHAR_NUM)s %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)
.PHONY: help

## Clean
clean:
	@echo $@
.PHONY: clean

## Run linters
lint:
	@echo $@
	docker run --rm -v "$$PWD":/workdir:ro $(MD_LINT_CONTAINER) -c .markdownlintrc "**/*.md"
	docker run --rm -v "$$PWD":/workdir:ro $(SHELLCHECK_CONTAINER) **/*.sh
	docker run --rm -v "$$PWD":/workdir:ro $(YAML_LINT_CONTAINER) -c .yamllint ./
.PHONY: lint
