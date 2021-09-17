#!/bin/bash
mem_threshold='10'
i=0;

#set -x

while [ $i -le 6 ]
do


mem_usage=`free -m | awk 'NR==2 {printf $3*100/$2}' | cut -f 1 -d "."`


       

        if [[ $i -ge 6 && $mem_usage -gt $mem_threshold ]]
          
        then
                  
          echo "mem warning!!!"
          echo "memory usages high :$mem_usage%"
          echo "Sending mail to Master Node "
          echo "Memory usages is high $mem_usage%" | mail -s "Memory Usages Alert" master@master.example.com
          echo $mem_usage memory
          exit 0 
       else
          echo "memory usages :$mem_usage%"
          echo "mem ok!!!"
           
         fi
sleep 5   

echo Number: $i
((i++))

done
