#! /usr/bin/awk -f

BEGIN{
  FS="|"
}
{
  literate_people[$2]+=($10*$3/100)
  total_people[$2]+=$3
}


END{
  for (a in literate_people){
   print "____________________" 
   print a
    print (literate_people[a]/total_people[a])*100
    print "____________________"
  }
}
