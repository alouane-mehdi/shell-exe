
#!/bin/bash


if [ "$2" = "x" ]
then
        echo "result: $(($1 * $3))"
elif [ "$2" = "/" ]
then
        result=$(echo "scale=2; $1 / $3" | bc)
        echo "result: $result"
elif [ "$2" = "+" ]
then
        echo "result: $(($1 + $3))"
elif [ "$2" = "-" ]
then
        echo "result: $(($1 - $3))"
fi



