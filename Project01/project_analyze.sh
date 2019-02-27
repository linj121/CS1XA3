#!/bin/bash
cd ..
echo 'Hello,User.Enter the function you want to execute'
echo 'Here are your options: TODOlog,DELtemp,SLEEP'
echo 'OR you can enter Exit to exit the script'
read -p 'Your choice is:' f
echo Now executing $f

while [ $f != "Exit" ]
do
    if [ $f = "TODOlog" ];then
        [ -e todo.log ] && rm todo.log
	cat ~/CS1XA3/Project01/todo.log | echo
    elif [ $f = "DELtemp" ];then
	untrack=$( git ls-files . exclude-standard others )
	for file in $untrack
	do
	   if [[ "$file" == *.tmp ]];then
              rm $file
	      echo "Deleting untracked file: $file"
           fi
	done
        echo "Deleting temporary files done"
    elif [ $f = "GUESS" ];then
         num=$[RANDOM%100+1]
         echo "An integer from 1 to 100 has been generated.Guess what it is." 
         while :
         do
            read -p "Please enter a number:" n
            if [ $n -eq $num ];then
                echo "Congratulations!You are right."
                break
            elif [ $n -gt $num ];then
                echo "The right answer is smaller~"
            else
                echo "The right answer is bigger~"
            fi
         done
    else
        echo "Wrong command! Please enter the correct name."
    fi
    read -p 'Choose one more time or Exit:' f
    echo Now executing $f
done
unset f
exit





