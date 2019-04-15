#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  region[$2]
  coastalarea[NR]=$6*$4
  continent[NR]=$2
}

END{
  for (b in region){
    total=0
    for(i=1; i<length(coastalarea); i++){
      if (continent[i] == b){
        total=total+coastalarea[i]
        array[b]=total
      }
    }
    print total
  }
  for (a in region){
    if (array[a]>most){
      most=array[a]
      con=a
    }
  }
  print con "-----"most
}

