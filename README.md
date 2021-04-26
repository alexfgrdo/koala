# Koala Toolkit

An amazing bug bounty toolkit for Docker.

<img src="./src/capture.png" />

## Instructions

> It is obvious that this tool MUST NOT be used in a malicious context. It should only be used against your own machine or with the consent of the owner of the targeted machine. The author of **Koala** can in no way be held responsible for any malicious and unauthorized use of this script.

### Prerequisites

- A Unix-like operating system: macOS, Linux, BSD. On Windows: WSL is preferred, but cygwin or msys also mostly work.
- Docker should be installed. If is not installed, check the following instructions here: [Docker Install](https://docs.docker.com/install/)

### Installation

```
git clone https://github.com/lxndrfgrd/koala.git
cd koala/bin/
chmod +x install.sh
./install.sh
```

### Utilisation

`koala` : Run Koala Toolkit <br/>
`koala -b` : Build <br/>
`koala -e` : Edit Dockerfile <br/>
`koala -h` : Print help <br/>
`koala -k` : Kill containers <br/>
`koala -r` : Remove containers<br/>
`koala -R` : Remove containers and image <br />
`koala -u` : Upgrade Koala <br />
`koala -uninstall` : Uninstall Koala <br />
`koala -v` : Print current version

## Tools

- [altdns](https://github.com/infosec-au/altdns)
- [aircrack-ng](https://github.com/aircrack-ng/aircrack-ng)
- [amass](https://github.com/OWASP/Amass)
- [awscli](https://github.com/aws/aws-cli)
- [commix](https://github.com/commixproject/commix)
- [curl](https://github.com/curl/curl)
- [dmitry](https://github.com/jaygreig86/dmitry)
- [dnsenim](https://github.com/fwaeytens/dnsenum)
- [dnsutils](https://packages.debian.org/fr/jessie/dnsutils)
- [exploitdb](https://github.com/offensive-security/exploitdb)
- [exploitdb-bin-sploits](https://github.com/offensive-security/exploitdb-bin-sploits)
- [ftp](https://packages.debian.org/jessie/ftp)
- [gcc](https://packages.debian.org/jessie/gcc)
- [hashcat](https://github.com/hashcat/hashcat)
- [hydra](https://github.com/ory/hydra)
- [john](https://github.com/magnumripper/JohnTheRipper)
- [libldns-dev](https://packages.debian.org/sid/libldns-dev)
- [make](https://packages.debian.org/buster/make)
- [masscan](https://github.com/robertdavidgraham/masscan)
- [massdns](https://github.com/blechschmidt/massdns)
- [metasploit-framework](https://github.com/rapid7/metasploit-framework)
- [net-tools](https://packages.debian.org/stretch/net-tools)
- [nikto](https://github.com/sullo/nikto)
- [netcat](https://packages.debian.org/jessie/netcat)
- [nmap](https://github.com/nmap/nmap)
- [php](https://github.com/php)
- [python3](https://www.python.org/)
- [python-pip](https://www.python.org/)
- [python3-pip](https://www.python.org/)
- [recon-ng](https://github.com/lanmaster53/recon-ng)
- [responder](https://github.com/lgandx/Responder/)
- [seclists](https://github.com/danielmiessler/SecLists)
- [sublist3r](https://github.com/aboul3la/Sublist3r)
- [sqlmap](https://github.com/sqlmapproject/sqlmap)
- [teh_s3_bucketeers](https://github.com/tomdev/teh_s3_bucketeers)
- [unicorn](http://www.unicornscan.org/)
- [vim](https://github.com/vim/vim)
- [wfuzz](https://github.com/xmendez/wfuzz)
- [wget](https://github.com/mirror/wget)
- [whois](https://github.com/weppos/whois)
- [wpscan](https://github.com/wpscanteam/wpscan)
- [wordlists](https://tools.kali.org/password-attacks/wordlists)
- [xsstrike](https://github.com/s0md3v/XSStrike)

## Versioning

**1.0.1**

## Authors

**Alexandre Figueiredo** - _Initial work_ - [lxndrfgrd](https://github.com/lxndrfgrd)

## License

Copyright © 2015-2019 Alexandre Figueiredo. It is free software, and may be redistributed under the terms specified in the LICENSE file.
