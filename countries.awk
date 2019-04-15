#! /usr/bin/awk -f

BEGIN {
  FS="|"
  total=0
};

{
  ($2~/ASIA/){
  total++
}

END {
  print total
};

