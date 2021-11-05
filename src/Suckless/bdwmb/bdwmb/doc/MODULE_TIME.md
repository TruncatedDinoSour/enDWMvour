# Module - time
This module shows your datetime in a specified format.
```
NAME: time
DEPENDENCIES: None
TYPE: Shellscript
```

## Setup
add the `time` module to your modules list and then define the `TIME_FORMAT` variable, this will get passed to `date` as the format argument.
For example:
```bash
export TIME_FORMAT='+%Y'
```

