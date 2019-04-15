#! /usr/bin/awk -f

BEGIN {
  FS="|"
  total=0
};
{
  ($9 >30000){
  total++
  };
}
END {
  print total
};

