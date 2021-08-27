usage:
	@echo "usage: make [start|stop]"

start:
	dnsmasq --no-daemon --conf-file=dnsmasq.conf
