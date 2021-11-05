# bdwmb - configuration

To configure bdwmb you need to edit the `~/.config/bdwmb/config.sh` file. bdwmb is configured through [environment variables](https://opensource.com/article/19/8/what-are-environment-variables).

## Normal configuration

### 1. Module loading

To have modules (items) in your bar you will first need to load them.
A way to do that is through the `MODULES` environment variable. The `MODULES` variable
is a bash array of modules you want.

Every module is listed and loaded from the `modules` directory so you can pick everything from there.

**EXAMPLE:**
```bash
# config.sh
export MODULES=('pad' 'time' 'sep1' 'battery')
```


### 2. Setting the refresh rate

To set the refresh rate of your bar set the `DELAY` variable.
This variable will regulate how often your bar will update.

**EXAMPLE:**
```bash
# config.sh
export DELAY='5s'
```

