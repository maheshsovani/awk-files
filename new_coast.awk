#! /usr/bin/awk -f

BEGIN{
  FS="|"
  total_area=0
}

{
  region[$2]
  countries[$1]=$2
  for (b in region){
    for (a in countries){
      if (b==countries[a])
        coastal_area[$2]+=$6
    }
  }
}
END{
  print coastal_area[2]
}

