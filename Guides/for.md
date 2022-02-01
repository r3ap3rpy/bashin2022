### For loop

The magic of computers is to repeat the same thing over and over again can be achieved via for loops.

These are the examples used in the video.

``` bash
#!/bin/bash
list="a b c d e f g"
for value in $list
do
	echo "The \$value is $value"
done
```

``` bash
#!/bin/bash
for number in {1..100..10}
do
	echo "The \$number is $number"
done
```

``` bash
#!/bin/bash
for ((i=0;i<=20;i++))
do
	echo "The value of \$i is $i"
done
```

``` bash
#!/bin/bash
for file in *.txt
do 
	echo "Renaming $file to renamed_$file"
	mv $file "renamed_$file"
done
```

You can save it in one file or separate files, just make sure you make it/them executable to use it.