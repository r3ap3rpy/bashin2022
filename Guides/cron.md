### Crontab

I usually visit this [site](https://crontab.guru/) to make sure the configuration is appropriate.

This is the small example we used.

``` bash 
#!/bin/bash

echo `date` >> /tmp/cron.log
```

This is the cron schedule.

``` bash
* * * * * /home/r3ap3rpy/cron.sh
```

The script runs every minute, and you have to make sure that the path is correct and the script is executable!