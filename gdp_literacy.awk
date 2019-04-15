#! /usr/bin/awk -f

BEGIN {
  FS="|"
  total=0
};

{
  ($9 >20000 && $10 < 90){
  total++
  }
}

END {
  print total
}

