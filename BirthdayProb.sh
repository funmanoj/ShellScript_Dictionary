#! /bin/bash -x

num_of_individuals=50
declare -A dictionary
echo "The birthday month and year of $num_of_individuals are:"
for (( individual=1; individual <= num_of_individuals; individual++ ))
do
   (( birth_month= RANDOM % 12 +1 ))
   (( birth_year= RANDOM % 2 + 92 ))
echo "individual $individual has birthday in month $birth_month year $birth_year"

   birth_day[$birth_month]+="${individual}"
done

for month in ${!dictionary[@]}
do
   echo "The individual who are having birthday in month $month are:"
   for individual in ${dictionary[$month]}
   do
      echo -n "$individual"
   done
   echo
done
