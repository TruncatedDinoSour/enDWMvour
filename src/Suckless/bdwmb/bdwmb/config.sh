#!/bin/bash
# This is an example configuration file for bdwmb

# Config
export MODULES=('pad'
                'ram'        'sep1'
                'drive'      'sep1'
                'battery'    'sep1'
                'brightness' 'sep1'
                'alsa'       'sep1'
                'time')

export DELAY='1s'

# Module config
export TIME_FORMAT='+%Y.%m.%d, %H:%M'
export SEPERATOR1=' | '
export DRIVE_CHECK_MOUNT='/'
export BATTERY_NAME='BAT1'
export BATTERY_SHOW_STATUS=1

