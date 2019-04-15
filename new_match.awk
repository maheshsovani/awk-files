#! /usr/bin/awk -f

BEGIN{
  FS=" "
}

{
  ($1~/^1/){
  array1[substr($2,length($2)-3)]=substr($2,1,length($2)-4)
  }
}

{
  ($1~/^2/) {
  array2[substr($2,1,4)]=substr($2,5,7)
  }
}

END{
  for (i in array1){
    print array1[i] i array2[i]
  }
}

