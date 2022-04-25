#! /bin/bash -x

declare -A dictionary
dictionary[1]=0
dictionary[2]=0
dictionary[3]=0
dictionary[4]=0
dictionary[5]=0
dictionary[6]=0

max_count=10
while(( 1 ))
do
   result=$((RANDOM%6+1))
   ((dictionary[$result]++))
   if((dictionary[$result]== $max_count))
   then
      break
   fi
done

maximum_num_count=$((RANDOM%6+1))
minimum_num_count=$((RANDOM%6+1))
echo "The number of dice and their number of counts are:"

for number in ${!dictionary[@]}
do
   if (( ${dictionary[$number]} -ge ${dictionary[$maximum_num_count]} ))
   then
       maximum_number_count=$number
   fi

   if (( ${dictionary[$number]} -le ${dictionary[$minimum_num_count]} ))
   then
       minimum_number_count=$number
   fi
done

echo "The number that reached maximum times is $maximum_num_count"
echo "The number that reached minimum times is $minimum_num_count"
