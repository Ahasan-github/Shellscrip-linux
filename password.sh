#!/bin/bash
 
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7

do 
     myarray=($(cut -f1 -d: | sort | uniq -d ))
done < passwd 
   echo "Duplicate Users  are as follows: "
for i in "${myarray[@]}"
do
  :
 echo $i
done

echo "Unique shell used among all the dupicate users above:"


 
awk -F:'++count[$1] == 2{shell[$NF]} END for (s in shell)print s}' passwd

