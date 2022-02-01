### Case statement

Its a flow control construct similar to the switch statement from C.

The first example we used was this.

``` bash
#!/bin/bash

read -p "You favourite linux distro: " distro

case "$distro" in
	CentOS)
		echo "You are an RPM guru!"
		;;
	Ubuntu)
		echo "You are a DEB guru!"
		;;
	*)
		echo "What are you????"
		;;
esac
```

The last example for the process killer was this.

``` bash
#!/bin/bash

read -p "Enter the process name: " process
read -p "Enter the signal ID: " signal_id
pid="$(pgrep $process)"
if [[ -z "$pid" ]]
then
	echo "Cannot find pid for process $process"
	exit
else
	echo "Identified process id of $process is $pid"
fi
case $signal_id in
	1)
		echo "Sending the SIGHUP to process $1"
		kill -SIGHUP $pid
		;;
	2)
		echo "Sending the SIGINT to process $1"
                kill -SIGINT $pid
		;;
	3)
	  	echo "Sending the SIGQUIT to process $1"
		kill -SIGQUIT $pid
		;;
	4)
		echo "Sending the SIGILL to process $1"
                kill -SIGILL $pid
		;;
	*)
		echo "I am not familiar with this ID $2"
		;;
esac
```

Make sure the scripts are executable. The asterisk is a jolly-joker that allows you to define default cases.

