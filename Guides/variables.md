### Variables

In shell you can use the following declaration **os=linux** where the first is the variable name and the last is the value.

A variable is basically a named memory location.

We created the following script to demonstrate the use cases.

``` bash
!/bin/bash
filename=/etc/shells
number_of_lines=`wc -l $filename`
first_line=`head -n 1 $filename`
last_line=`tail -n 1 $filename`
echo "#########################"
echo "The file: $filename has $number_of_lines"
echo "The first line is: $first_line"
echo "The last line is: $last_line"
```

Use the **chmod +x** to make it executable.