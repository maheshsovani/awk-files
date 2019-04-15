#! /bin/awk -f

BEGIN{
  FS="|"
  l=0
  m=""
}

{
  (length($1)==m){
    m=$1 "," m
  }
  (length($1)>m){
    l=length($1)
    m=$1
  }
END{
    print l
    print m 
}
