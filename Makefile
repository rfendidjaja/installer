.PHONY: docker binary install uninstall

docker:
	docker pull audits/cli
	install -m 0755 wrapper $(DESTDIR)$(PREFIX)/bin/greenlight

binary:
	mkdir -p bin
	sh ./download
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 greenlight $(DESTDIR)$(PREFIX)/bin/greenlight
	rm -rf bin

install: docker

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/greenlight
