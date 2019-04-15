#! /usr/bin/awk -f

BEGIN {
  FS="|"
};

{
  ($2 ~/195/ ){
  print $6
};
