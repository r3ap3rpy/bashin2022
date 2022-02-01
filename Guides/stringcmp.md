### String comparision

Two strings are equal if they have the same length and contain the same characters.
The comparision is case-sensitive.

The first example looks like this.

``` bash
#!/bin/bash
read -p "Give me the first string:" a
read -p "Give me the second string:" b
if [ "$a" = "$b" ]
then
	echo "The strings are the same!"
else
	echo "The string are different!"
fi

if [[ "$a" == "$b" ]]
then
	echo "Same"
else
	echo "different"
fi
```

The second example looks like this.

``` bash
#!/bin/bash
read -p "Enter the string: " a
read -p "Enter substring: " b
if [[ "$a" == *"$b"* ]]
then
	echo "The substring is there!"
else
	echo "It's not a substring!"
fi
```

The last example looks like this.

``` bash
#!/bin/bash
read -p "Enter a string: " a
if [[ -z "$a" ]]
then
	echo "The string is empty!"
else
	echo "It's not empty!"
fi
```

Make sure you make the examples executable in order to try them out.