# Ansible version manager Makefile

PREFIX ?= /usr/local

install: bin/avm
	@echo "\033[32mCreate binnary\033[0m"
	@mkdir -p $(PREFIX)/$(dir $<)
	@cp $< $(PREFIX)/$<
	@chmod +x $(PREFIX)/$<

uninstall:
	@echo "\033[32mRemove binnary\033[0m"
	@rm -f $(PREFIX)/bin/avm

.PHONY: install uninstall
