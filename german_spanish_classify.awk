#! /usr/bin/awk -f

BEGIN {
  FS="|"
  print "Print a YO in front of movies that are in the Spanish language AND print a Der  in front of movies that are in the German language"
};
{
  ($8 ~/German/ ){
  print "Der"" "$1 NR
  }
}
{
  ($8 ~/Spanish/){
  print "Yo" " "$1 NR
  };
}

