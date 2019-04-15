#! /usr/bin/awk -f

BEGIN{
  FS="|"
  beolw100=""
}

{
  ( $5 < 100 ) {
  below100=below100"\n"$1 
  }
}

{
  (100<$5 && $5<300){ 
  between=between"\n"$1
}

{
  ($5>300){
  highest=highest"\n"$1
  }
}

END{
  print "-------------------------"
  print "countries having poopulation density below 100"
  print below100
  print"-------------------------"
  print"-------------------------"
  print "countries having population density between 100-300"
  print between
  print"-------------------------"
  print"-------------------------"
  print"countries having population density more than 300"
  print highest
  print"-------------------------"
}
