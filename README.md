[![Joknarf Tools](https://img.shields.io/badge/Joknarf%20Tools-Visit-darkgreen?logo=github)](https://joknarf.github.io/joknarf-tools)
[![Build and Release Packages](https://github.com/joknarf/tty-keepalive/actions/workflows/release.yml/badge.svg)](https://github.com/joknarf/tty-keepalive/actions/workflows/release.yml)
[![Packages](https://img.shields.io/badge/Packages-%20rpm%20|%20deb%20|%20pkg%20|%20apk%20|%20brew%20-darkgreen.svg)](https://github.com/joknarf/tty-keepalive/releases/latest)
[![Shell](https://img.shields.io/badge/shell-bash%20-blue.svg)]()
[![Licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://shields.io/)


# tty-keepalive

Simulate tty activity in background to prevent stale/disconnected interactive session ($TMOUT / firewall timeout)

## features

* background process to keepalive an interactive shell session (ssh connection)
* send OSC Virtual Bell code to tty at defined interval (silently ignored by terminal emulators)
* exits when tty dies

## install

Clone the repository or use your package managers with [release](https://github.com/joknarf/tty-keepalive/releases/latest) packages

## usage

```
tty-keepalive [<SECONDS>]
```
in rc file:
```
tty-keepalive [<SECONDS>]
```

default `<SECONDS>`: 120
