#! /usr/bin/awk -f
BEGIN {
  FS="|"
  print "How many Korean language movies are there in list?"
  no=0
};

{
  ($8 ~/Korean/){
  print $1
  no++;
  };
}  

END{
      print no
};
