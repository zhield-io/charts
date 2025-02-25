.PHONY: *
.DEFAULT_GOAL:=help

help:
	@echo "Commands available"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' | sed -e 's/^/ /' | sort

## lint: Static analysis
lint:
	# Helm charts
	helm lint helm/*

## update: Update repository index and packages
update:
	@./update.sh
