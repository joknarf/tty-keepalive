[![Joknarf Tools](https://img.shields.io/badge/Joknarf%20Tools-Visit-darkgreen?logo=github)](https://joknarf.github.io/joknarf-tools)
[![Shell](https://img.shields.io/badge/shell-bash%20-blue.svg)]()
[![Licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://shields.io/)


# tty-keepalive

Simulate tty activity in background to prevent ssh stale connection (TMOUT / firewall timeout)

## features

* background process to keepalive a ssh connection
* send OSC Virtual Bell code to tty at defined interval (generally ignored by terminal emulators)
* exits when tty dies

## usage

```
tty-keepalive [<SECONDS>]
```
in rc file:
```
tty-keepalive [<SECONDS>]
```

default `<SECONDS>`: 120
