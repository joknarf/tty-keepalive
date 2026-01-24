[![Joknarf Tools](https://img.shields.io/badge/Joknarf%20Tools-Visit-darkgreen?logo=github)](https://joknarf.github.io/joknarf-tools)
[![Build and Release Packages](https://github.com/joknarf/tty-keepalive/actions/workflows/release.yml/badge.svg)](https://github.com/joknarf/tty-keepalive/actions/workflows/release.yml)
[![Shell](https://img.shields.io/badge/shell-bash%20-blue.svg)]()
[![Licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://shields.io/)


# tty-keepalive

Simulate tty activity in background to prevent stale/disconnected interactive session ($TMOUT / firewall timeout)

## features

* background process to keepalive an interactive shell session (ssh connection)
* send OSC Virtual Bell code to tty at defined interval (silently ignored by terminal emulators)
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
