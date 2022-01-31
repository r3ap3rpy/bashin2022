### Introduction

The **/etc/shells** holds a list of all the available shells on a system.

The **/etc/passwd** shows which is the default shell of the users on the system.

There are many ways to execute a shell script.

You can do it by either making it executable with **chmod +x** and using the shebang at the beginning of your script, or passing it to the corresponding app like **bash my_script.sh**

The script if not the absolute path is specified will be searched on the **$PATH** variable.

``` bash
#!/bin/bash
echo "Hello World"
```

Use the **chmod 700 hello_world.sh** to make it executable.

Use the **mv hello_world.sh /usr/bin/** to make the script globally available. 