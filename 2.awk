#! /usr/bin/awk -f

BEGIN{
  FS="|"
  print "How many movies are there in the list that are both drama and thriller ?"
  no=0
};

{
  ($5 ~/Drama/ && $5 ~/Thriller/){
  no=no+1
  }
};

END{
     print no
};
