PREFIX ?= /usr/local
CONF ?= $(HOME)/.config/bdwmb
SHARE ?= /usr/share/bdwmb
MODULES ?= $(SHARE)

all: install

install:
	mkdir -p "$(DESTDIR)$(CONF)"
	mkdir -p "$(DESTDIR)$(CONF)"/modules

config:
	if [ ! -f "$(DESTDIR)$(CONF)"/config.sh ]; then install -Dm755 config.sh "$(DESTDIR)$(CONF)"; fi

uninstall:
	rm -rf "$(DESTDIR)$(PREFIX)"/bin/bdwmb "$(DESTDIR)$(SHARE)"

bin:
	mkdir -p "$(DESTDIR)$(PREFIX)"/bin
	mkdir -p "$(DESTDIR)$(SHARE)"
	install -Dm755 bdwmb "$(DESTDIR)$(PREFIX)"/bin
	-@ # TODO: turn cp -r to install(1)
	cp -r modules "$(DESTDIR)$(MODULES)"

git:
	-git add -A
	-git commit -S -m "update @ $(shell date)"
	-git push -u origin main

full:
	make uninstall
	make install
	make bin
	make config

