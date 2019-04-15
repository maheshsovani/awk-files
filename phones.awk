#! /usr/bin/awk -f

BEGIN{
  FS="|"
  high_percentage=0
  regionn=""
}

{ 
  regions[$2]+=$3*$11/1000
  total_population[$2]+=$3
}

{ 
  for (region in regions){
    percentage=regions[region]/total_population[region]*100
    if (percentage > high_percentage){
      high_percentage=percentage
      regionn=region
    }
  }
} 

END{
  print high_percentage
  print regionn
}
