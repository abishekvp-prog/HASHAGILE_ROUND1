#!/bin/bash 
array=(12 35 1 10 34 1) 
large=-999999 
secondlarge=-999999 
for number in "${array[@]}"; do 
    if [ "$number" -gt "$large" ]; then 
        secondlarge=$large 
        large=$number 
    elif [ "$number" -gt "$secondlarge" ] && [ "$number" -ne "$large" ]; then 
        secondlarge=$number 
    fi 
done 
echo "The second largest element in the array is: $secondlarge"