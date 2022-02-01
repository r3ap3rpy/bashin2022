### Special variables

There are some very usefull variables in bash you need to be aware of.
- $0
- $1
- $2
- $#
- "$*"
- $?

This is the script **special_vars.sh** we used for demo.

``` bash
#!/bin/bash
echo "The runner is $0"
echo "The first argument is: $1"
echo "The second argument is: $2"
echo "Number of arguments: $#"
echo "The string representation of arguments: $*"
echo "Last exit code: $?"
```