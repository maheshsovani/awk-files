#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  regions[$2]
  country_name[$1]=$2
}
END{
  for (a in regions){
    print a
    for (b in country_name){
     if( a==country_name[b]){
      print b
     }
    }
  }
}
