### Testing and flow control

You can inspect the relevant manual with **man test**.

The first script used is called **appels.sh**

``` bash
#!/bin/bash
read -p "How many apples do you have: " apples
if [[ $apples -gt 6 ]]
then
	echo "You have plenty!"
elif [[ $apples -eq 6 ]]
then
	echo "You have enought apples!"
else
	echo "Thats not so bad either!"
fi
```

The second one used is **age.sh**.

``` bash
#!/bin/bash
read -p "How old are you:" age
if [[ $age -lt 21 && $age -ge 0 ]]
then
	echo "You are still a minor!"
elif [[ $age -eq 21 ]]
then 
	echo "You are a young adult!"
elif [[ $age -gt 21 && $age -lt 120 ]]
then
	echo "You are an adult!"
else
	echo "Invaild age!"
fi
```