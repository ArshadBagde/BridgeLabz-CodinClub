#!/bin/bash
read -p "Enter first numbers : " a 
read -p "Enter Second number : " b
read -p "Enter Third number  : " c

ans1=$(( a + b * c))
ans2=$((a * b + c))
ans3=$((c * a / b))
ans4=$((a % b + c))


echo "$a + $b * $c= $ans1"
echo "$a * $b + $c= $ans2"
echo "$c * $a / $b= $ans3"
echo "$a % $b + $c= $ans4"

echo "**********************************************"

declare -A operation
operation=( ["operation1"]="$ans1" ["operation2"]="$ans2" ["operation3"]="$ans3" ["operation4"]="$ans4" )


echo "${operation["operation1"]}"
echo "${operation["operation2"]}"
echo "${operation["operation3"]}"
echo "${operation["operation4"]}"

echo "********************************************"

echo enter the no of element
read n1
for (( i=0; i<$n1; i++ ))
do
            echo enter `expr $i + 1` the element.
            read a[$i]
done
for (( i=0; i<$n1; i++ ))
do
            for (( j=`expr $i + 1`; j<$n1; j++ ))
            do
                        if [ ${a[$i]} -gt ${a[$j]} ]
                        then
                                    x=${a[$i]}
                                    a[$i]=${a[$j]}
                                    a[$j]=$x
                        fi
            done
done
echo 1.Ascending  2.Descending
echo enter your choice...
read c
if [ $c = 1 ]
then
            echo the ascending order is....
            for (( i=0; i<$n1; i++ ))
            do
                        echo ${a[$i]}
            done
elif [ $c = 2 ]
then
            echo the descending order is...
            for (( i=$n1; i>0; i-- ))
            do
                        echo ${a[`expr $i - 1`]}
            done
else
            echo wrong choice......
fi

echo "********************************************"