#! /usr/bin/awk -f
BEGIN{
  FS="|"
}

{
  regions[$2]
  countries[$1]=$2
}
END{
  for (region in regions){
    print "-------------------"
    print region 
    print""
    for (country in countries){
      if (region==countries[country]){
        print country
      }
    }  
  }
}
