# vrs-dnsmasq: VRS implementation in DNSMasq

## Description

[vrs]: https://github.com/open-voice-network/docs/blob/main/components/voice_registry_system.md

This is a proof of concept to show how existing DNS technology could be
leveraged to implement the [OVON Voice Registry System][vrs].

## Usage

```sh
make start

# query SRV records
dig @localhost -p 5353 SRV _vrs._tcp.ovon.org
dig @localhost -p 5353 SRV _vrs._udp.ovon.org
dig @localhost -p 5353 SRV target._vrs._tcp.ovon.org

# query TXT records
dig @localhost -p 5353 target.vrs.ovon.org TXT
dig @localhost -p 5353 delta.vrs.ovon.org TXT
dig @localhost -p 5353 103-305-503-122-501-135-302-319.ipa.vrs.ovon.org TXT
```
