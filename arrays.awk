#! /usr/bin/awk -f

BEGIN{
  first_set=[1 2 3 4 5 6 7 8 9 10]
  second_set=[10 9 8 7 6 5 4  3 2 1]

  first_set[NR]=first_set
  second_set[NR]=second_set

}
{
  for (i in first_set){
    for  (i=1;i<length(first_set);i++){
      answer=first_set[i]*second_set[i]
    print answer
    }
   }
}
