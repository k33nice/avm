# Ansible version manager Makefile

PREFIX ?= /usr/local

install: bin/avm
	@echo "\033[90mCreate binnary"
	@mkdir -p $(PREFIX)/$(dir $<)
	@cp $< $(PREFIX)/$<
	@chmod +x $(PREFIX)/$<

uninstall:
	@echo "\033[90mRemove binnary"
	@rm -f $(PREFIX)/bin/avm

.PHONY: install uninstall
