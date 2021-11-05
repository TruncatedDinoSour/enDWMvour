# BdwmB
A simple, modular bash/shell script for configuring your DWM bar.

## Installation
```bash
$ git clone https://github.com/TruncatedDinosour/bdwmb
$ cd bdwmb
$ sudo make full
$ make config
```

## Flags
```
-q = quiet, do not show debug messages.
-h = show help
```

## Using it in .xinitrc
```bash
exec /usr/local/bin/bdwmb -q &
```

## Dependencies
```
xsetroot
```


## For documentation look into the `/doc` directory.

