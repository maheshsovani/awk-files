#! /usr/bin/awk -f

BEGIN {
  FS="|"
  populas_country=""
  p=0
};
{
  ($4 > p){
  populas_country=$1
  p=$4

};

END {
  print populas_country
};

