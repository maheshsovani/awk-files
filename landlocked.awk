#! /usr/bin/awk -f

BEGIN {
  FS="|"
  list=""
  count=0
}
{
  ($6==0){
  count++
  list=list"\n "$1
  }
}

END{
  print list
  print count
}

