.POSIX:

all: install

install:
	find src -mindepth 1 -type f | \
               xargs -I'{}' cp -v '{}' "$(HOME)/.local/bin"

uninstall:
	find src -mindepth 1 -type f | \
               awk -v home="$(HOME)" \
               '{ sub("^src",""); print "rm -v " home "/.local/bin" $$0 }' | \
               sh

.PHONY: all install uninstall
