default: all

.DEFAULT:
	cd src && $(MAKE) $@
	cd test && $(MAKE) $@

.PHONY: install
install:
	cp src/cpulimit ~/bin
