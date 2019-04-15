#! /usr/bin/awk -f

BEGIN{
  FS="|"
  highest_literacy=0
}

{
  array[$2]+=$10
}

END{
  for (a in array){
    if (array[a]>highest_literacy){
      highest_literacy=array[a]
    }
  }
  { print a 
    print  highest_literacy
  }
}
