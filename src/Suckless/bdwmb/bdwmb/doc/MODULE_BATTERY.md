# Module - battery
This module shows your battery percentage and status.
```
NAME: battery
DEPENDENCIES: None
TYPE: Shellscript
```

## Setup
Go to your config.sh and add the `battery` module to your module list.
After that define the `BATTERY_NAME` variable with your battery name, for example:
```bash
export BATTERY_NAME='BAT1'
```

And then `BATTERY_SHOW_STATUS`, this will define if your widget will be responsive to the status of your battery.
For example:

```bash
export BATTERY_SHOW_STATUS=1
```

1 - True and 0 - False.

