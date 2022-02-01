### While loop

This construct is the brother of the for loop, but an infinite version.

The first example we used is this.

``` bash
#!/bin/bash

while true
do 
	echo "I am infinite!"
	sleep 1
done
```

This is the second example.

``` bash
#!/bin/bash

i=0

while [[ $i -lt 5 ]]
do
	echo "The value of \$i is $i"
	let i=i+1
done
```

This is the last example for the process watcher. Make sure you kick of a process or use an existing one.

``` bash
#!/bin/bash

if [[ $# -eq 1 ]]
then 
	echo "The process being watched is $1"
else
	echo "You need to specify the process to be watched!"
	exit 1
fi 
while :
do
	if [[ -n "$(pgrep -l $1)" ]]
	then
		echo "The process $1 is running!"
	else
		echo "The process $1 is NOT running!"
	fi
	sleep 1
done
```

Make sure you make them executable befor trying them out.