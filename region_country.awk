#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  country[$1]=$2
  region[$2]
}

END{
  print country[India]
}

