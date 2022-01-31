### Shebang

In shell scripting everything after the **#** is a comment except the first line.
This is where you can specify the interpreter used to execute the script!

You can use the **which <interpreter>** command to figure out the location of your interpreter that you want to use.

Let's create the **hello_py.py** with the following content.

``` python
#!/usr/bin/python
print("Hello From Python")
```

After using the **chmod** you can execute it.

You can create the following **hello_perl.pl** script to demo aswell.

``` perl
use strict;
use warnings;

print("Hello World")
```

Don't forget to make it executable!