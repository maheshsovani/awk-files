#! /usr/bin/awk -f


BEGIN{
  FS="|"
}
{
  continent[$2]
  country[NR]=$1
  continents[NR]=$2
}
END{  
  for(a in continent){ 
    print a
    print" ______________________________"
    for(i=1; i<length(country);i++){
      if(continents[i]==a)
       print country[i]
    }
    print "______________________________"
  }
}

