# init-xfce [![Build Status](https://travis-ci.org/emilianobovetti/init-xfce.svg?branch=master)](https://travis-ci.org/emilianobovetti/init-xfce)

I use this set of scripts to replicate my environment on freshly installed Debian/Xfce. It's not meant to run on different distributions or desktop environments.

Please note that this is experimental work.

**Use it at your own risk and peril.**

## Setup

Download the [latest release](https://github.com/emilianobovetti/init-xfce/releases/latest/download/init-xfce.tar.gz), untar it and run `start`.

```bash
wget https://github.com/emilianobovetti/init-xfce/releases/latest/download/init-xfce.tar.gz
tar -xzf init-xfce.tar.gz
cd init-xfce
./start
```

## What does `init-xfce` do?

First of all you will be prompted to enter some informations:

- Which additional [install script](https://github.com/emilianobovetti/init-xfce/tree/master/installs) run
- If you want to add your current user in `/etc/sudoers`
- If you want to enable autologin for the same user
- The root password

Now the process can run without further user inputs:

- Some [base packages](https://github.com/emilianobovetti/init-xfce/blob/master/utils/install-base-packages) will be installed
- The requested actions will be executed
- [Home](https://github.com/emilianobovetti/init-xfce/tree/master/home) files will be restored
- Finally some utilities will be copied in `~/.local/bin` (such as `tstyle`, `ranstr` and `mkpsw`)

### Use util scripts outside `start`

```bash
# e.g.
sudo ./util install-base-packages
./util user-exists $(whoami) && echo yup
```

### Run install script outside `start`

```bash
# e.g.
sudo ./util run-install --user $(whoami) laptop
```
