#! /usr/bin/awk -f

BEGIN {
  FS="|"
  populas_country=""
  new_value=0
};

{
  if ($3 < new_value || new_value ==0 ){
  new_value=$3 
  populas_country=$1
  }
  else { 
    populas_country=populas_country
    new_value=new_value
  }
};

END {
    print populas_country
};

