#! /usr/bin/awk -f

BEGIN {
  FS="|"
  total=0
};

{
  ($2~/EUROPE/){
  total++
  }
}  

END {
    print total
};

