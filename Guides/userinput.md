### User input

You can use the **man  read** to read further information about this command.

In order to read with a specific hint use this command.

```bash
read -p "Please enter your age:" age
```

In order to hide the user input use the **-s** switch.

``` bash
read -s -p "Please enter your password: " password
```

This is the demo script used **read_lines.sh**

``` bash
#!/bin/bash
echo "################"
read -p "Enter the number of lines: " line_num
echo "These are the $line_num of /etc/password"
head -n $line_num /etc/passwd
echo "################"
```

Make sure you make the script executable!