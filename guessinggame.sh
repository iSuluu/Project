#!/bin/env bash
# File: guessinggame.sh


check(){
        r=1
        if [ $1 == $2 ]
        then
                echo  "$1: is correct, mission completed"
                r=0
        elif [ $1 -gt $2 ]
        then
                echo "$1: is more tha I expect"
                r=1
        elif [ $1 -lt $2 ]
        then
                echo "$1: is less than I expect"
                r=1
        fi

        return $r
}

x=1
while [ "$x" == 1 ]
do
        echo "Guess the number of folders in the directory"
        read -r number
        dir=`pwd`
        echo "in dir $dir:"
        count=`find $dir -type f | wc -l`
        echo  "You entered:" $number
        check $number $count
        x=$?
done
