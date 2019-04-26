NAME            := zsh-kubectl-completion
SRCS            := $(shell find . -type f -name '_*')
PRE-VERSION     := $(shell grep 'version:' _kubectl | cut -c 44-)
CURRENT-VERSION := v0.1.6

.PHONY: release
release:
	sed -i '' -e 's/$(PRE-VERSION)/$(CURRENT-VERSION)/g' README.md
	sed -i '' -e 's/$(PRE-VERSION)/$(CURRENT-VERSION)/g' $(SRCS)
