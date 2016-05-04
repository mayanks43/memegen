#!/bin/bash
count=0
echo $3
mkdir -p Data/$3
while read line
do
    # extract line
    line=`echo "$line" | tr -d '[:punct:]' | cut -d '=' -f 2 | sed 's/.$//'`
    #echo $line
    # convert line to array
    linearray=(${line})

    # get length/2 of line
    arrlen=`echo "$line" | wc -w`
    halflen=`expr $arrlen/2|bc`
    
    # Save two parts of line into var1 and var2
    i=0
    var1=""
    var2=""
    while [ $i -le $halflen ]
    do
        var1="$var1 ${linearray[$i]}"
        i=`expr $i + 1`
    done  
    while [ $i -le $arrlen ]
    do
        var2="$var2 ${linearray[$i]}"
        i=`expr $i + 1`
    done  
    
    # Save meme into path $3/$count
    bin/memegen $2 Data/$3 $count "$var1" "$var2"
    count=`expr $count + 1` 
    
done < $1

