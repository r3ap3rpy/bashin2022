### Functions

They allow you to have better organized code and accelerate your daily life.

The first example used is this.

``` bash
#!/bin/bash

hello_world () {
	echo "Hello World function!"
	echo "This is the first argument: $1"
	echo "This is the second argument: $2"
}

hello_world first second
```

The last example is this.

``` bash
#!/bin/bash

read -p "Specify the logfile: " logfile
read -p "Specify the filter: " filter

read_filtered_lines () {
	sudo grep -c "$1" "$2"
}

read_filtered_lines $filter $logfile
```

If you define functions in your **~/.bash_profile** you either have to re-login to use them or **source** the file.

Make sure the examples are executable!