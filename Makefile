DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-code-html
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-code-html
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/code-html-links bin/code-html-tidy bin/code-html-tags  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
