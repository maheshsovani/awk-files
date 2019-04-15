#! /usr/bin/awk -f

BEGIN {
  FS="|"
};

{
  ($1 ~/^O/ || $2>2000){
  print $1  
  print $1
  } 
}
