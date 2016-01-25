DEST_DIR = /usr/local/lib/systemd/system
CONF_DIR = /etc

.PHONY: install services confs

install: services confs

services: *.service
	install --owner=root --group=root --mode=755 -d $(DEST_DIR)
	install --owner=root --group=root --mode=644 $^ $(DEST_DIR)

confs: *.conf
	install --owner=root --group=root --mode=644 $^ $(CONF_DIR)
