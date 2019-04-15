#! /usr/bin/awk -f
BEGIN{
  FS="|"
}

{
  coastal_line[$2]+=$6
} 

END{
  for (a in coastal_line){
    if (region_most_surrounded_by_water<coastal_line[a]){
      region_most_surrounded_by_water=coastal_line[a]
      region=a
    }
  }
  print region_most_surrounded_by_water
  print region
}
