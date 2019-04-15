#! /usr/bin/awk -f

BEGIN {
  FS="|"
 total=0
};
 ($10 >70){
  total++
};

END {
  print total
  };

