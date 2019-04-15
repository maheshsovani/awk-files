#! /usr/bin/awk -f

BEGIN{
  FS=" "
}

{
  letter[$1]=1
  letter2[$2]=$1
}

END{
  for (a in letter)
    for (b in letter2)
      if (b==a){
        print a "|" b
      }
}
