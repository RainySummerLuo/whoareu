PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install whoareu.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p whoareu $(DESTDIR)$(PREFIX)/bin/whoareu
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/whoareu

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/whoareu
