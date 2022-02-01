### Command substitution

In order to capture the output from a command to variable you can use the following formats **variable=`command`** or **variable=$(command)**.

This is the demonstration script used **backup.sh**.

``` bash
#!/bin/bash
read -p "Which folder to archive:" folder_to_archive
if [[ -d $folder_to_archive ]]
then
	sudo tar cvf "/home/r3ap3rpy/$(date +"%F")_etc.tar" $folder_to_archive
else
	echo "The folder: $folder_to_archive does not exist!"
fi
```