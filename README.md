# Pdcmd

* simple gem that wraps a few things and make a little command line utility
* useful for things like one of notifications via monit exec
* example monit config to alert on disk usage: 

```
check filesystem "var" with path /var
    if space usage > 96% for 3 cycles then exec "/usr/local/bin/pdcmd -k YOUR_PD_SERVICE_KEY -m 'things are borked'"
```

usage 

```
pdcmd -k <your pd service key> -m "the message to send" 
```
