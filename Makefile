.DEFAULT_GOAL := help

help: ## Print this help
	@echo 'Usage:'
	@echo '  make <target>'
	@echo ''
	@echo 'Targets:'
	@grep -E '^[a-zA-Z_-]+:.*##' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*##"}; {printf "  %-10s %s\n", $$1, $$2}'
.PHONY: help

lint: ## Run linters
	@echo $@
	uvx --from shellcheck-py shellcheck *.sh
	uvx --from shellcheck-py shellcheck **/*.sh
	uvx pymarkdownlnt scan "**/*.md"
	uvx yamllint -c .yamllint ./
.PHONY: lint
