# Module - drive
This module shows space left on a specified drive/partition

## Setup
Add the `drive` module to your module list and then define `DRIVE_CHECK_MOUNT` variable which should have
the value of the disk partition mount point you want to check.
For example:
```bash
export DRIVE_CHECK_MOUNT='/'
```

