#!/bin/bash
cd ..
echo 'Hello,User.Enter the function you want to execute'
echo 'Here are your options: TODOlog'
echo 'OR you can enter Exit to exit the script'
read -p 'Your choice is:' f
echo Now executing $f

while [ $f != "Exit" ]
do
    if [ $f = "TODOlog" ];then
        cat /dev/null > ~/CS1XA3/Project01/todo.log
        list=$( git ls-files )
        for file in $list
        do
            while read line
            do
               echo "$line #TODO" >> ~/CS1XA3/Project01/todo.log
            done < $file
        done
    else
        echo "Wrong command! Please enter the correct name."
    fi
    read -p 'Choose one more time or Exit:' f
    echo Now executing $f
done
unset f
exit





