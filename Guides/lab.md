### Connectivity lab

This is the example shown in the video.

``` bash
#!/bin/bash
read -p "Enter the site: " site
read -p "Enter the number of tries: " count
output=$(ping -c $count $site &> /dev/null)

if [ $? -eq 0 ]
then
	echo "The site is avaialable!"
else
	echo "The site is unavailable!"
fi
```

The  **$?** is going to tell us whether the previous command has succeeded, a value of 0 means success anything other than that means failure.
The **/dev/null** acts like a black hole swallowing our expected error messages.