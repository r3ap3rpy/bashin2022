### Connectivity lab

This is the example shown in the video.

``` bash
#!/bin/bash

if [ $# -ne 2 ];then
	echo "Sorry I need site and tries!"
	exit -1
fi

output=$(ping -c $2 $1 > /dev/null || exit -1)
if [ $? -eq 0 ];then
	echo "Site: $1 is AVAILABLE!"
	exit 0
else
	echo "Site: $1 is NOT AVAILABLE!"
	exit -1
fi

```

The  **$?** is going to tell us whether the previous command has succeeded, a value of 0 means success anything other than that means failure.
The **/dev/null** acts like a black hole swallowing our expected error messages.
