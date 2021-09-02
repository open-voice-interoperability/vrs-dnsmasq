# vrs-dnsmasq: VRS implementation in DNSMasq

## Description

[vrs]: https://github.com/open-voice-network/docs/blob/main/components/voice_registry_system.md

This is a proof of concept to show how existing DNS technology could be
leveraged to implement the [OVON Voice Registry System][vrs].

## Usage

```sh
make start

# Look up 'target' in VRS
dig @localhost -p 5353 target.vrs TXT

# Look up /tɑːrˈʒeɪ/ in VRS using IPA encoding
dig @localhost -p 5353 103-305-503-122-501-135-302-319.vrs TXT

# Look up 'delta' in VRS
dig @localhost -p 5353 delta.vrs TXT

# Look up Target's VRS servers
dig @localhost -p 5353 SRV _vrs._tcp.target.com

```
