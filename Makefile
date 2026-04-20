.PHONY: help copy update tag

help: ## Show available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

copy: ## Scaffold a new vault from this template. Usage: make copy DEST=~/my-vault
ifndef DEST
	$(error DEST is required. Usage: make copy DEST=~/my-vault)
endif
	copier copy . $(DEST)

update: ## Update an existing vault with latest domain changes. Usage: make update DEST=~/my-vault
ifndef DEST
	$(error DEST is required. Usage: make update DEST=~/my-vault)
endif
	cd $(DEST) && copier update

tag: ## Tag and push a new release. Usage: make tag VERSION=v0.1.0
ifndef VERSION
	$(error VERSION is required. Usage: make tag VERSION=v0.1.0)
endif
	git tag $(VERSION)
	git push origin $(VERSION)
