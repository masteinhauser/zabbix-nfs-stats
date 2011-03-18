BINDIR=$(DESTDIR)/usr/bin
CRONDIR=$(DESTDIR)/etc/cron.d

clean:
	rm -rf debian/zabbix-nfs-stats
	rm -f build-stamp configure-stamp
	rm -f debian/debhelper.log
	rm -f debian/files
	rm -rf debian/tmp
	rm -f debian/*.log

install:
	cp usr/bin/* $(BINDIR)/
	cp etc/cron.d/zabbix-nfs-stats $(CRONDIR)/
	chmod 755 $(BINDIR)/zabbix-nfs-stats

uninstall:
	rm -rf $(BINDIR)/zabbix-nfs-stats
	rm -rf $(CRONDIR)/zabbix-nfs-stats
