#! /usr/bin/awk -f

BEGIN{
  FS="|" 
}

{
  countries[$2]=countries[$2] "\n" $1
}

END{ 
  for (region in countries){
    print region"\n-------"
    print countries[region]
  }
}


