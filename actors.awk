#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  split($7,actors,", ")
  for(i=1; i<=length(actors); i++){
    a[actors[i]]=1
  }
}

END{
  for (e in a){
    print e
  }
}
