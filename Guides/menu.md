### Menu

This statement is similar to the **case** statement and is often used in combination  with it.

Technically it allows you to use it to flow control. You have to use the **break** statement to exit from it.

This is the first example.

``` bash
#!/bin/bash

select action in shutdown reboot freeze halt
do
	echo "The selected action is $action"
	echo "REPLY is $REPLY"
done
```

This is a more complex example.

``` bash
#!/bin/bash

select action in "update upgrade updateandupgrade Quit"
do
	case $REPLY in
		1)
			echo "Your system is going to be updated!"
			;;
		2)
			echo "Your system is going to be upgraded!"
			;;
		3)
			echo "Your system is going to be updated and upgraded!"
			;;
		4)
			echo "Quitting..."
			break
			;;
		*)
			echo "This is an invalid selection!"
			;;
	esac
done
```

Make sure the demos are executable!