usage:
	@echo "usage: make [start|stop]"

test:
	dnsmasq --test --conf-file=dnsmasq.conf

start:
	dnsmasq --no-daemon --log-queries --conf-file=dnsmasq.conf
