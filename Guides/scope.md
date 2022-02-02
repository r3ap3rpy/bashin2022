### Variable scopes

In this video we learnt that by default a variable defined in a bash script has global scope, and you can use the **local** to define variables inside a scope that live only inside  the scope.

The example used here is the following.

``` bash
#!/bin/bash

a="Hello"
b="World"

scope () {
	a="Goodbye"
	local b="Sanity"
	echo "Inside the function \$a has value $a, and \$b has value $b"
}

scope

echo "Outside the function \$a has value $a, and \$b has value $b"
```

Make sure that the demo is executable when you try it out!

