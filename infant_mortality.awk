#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  ( $9 >20000 ){ 
  if (infant_mortality < $8){
    infant_mortality=$8
    country=$1}
}

END{
  print country "|" infant_mortality
}
