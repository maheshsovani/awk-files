#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{  
  total_area+=$4
  aerable_land+=($4*$12/100)
}

END{
      percentage=(aerable_land/total_area)*100
      print  "------------------------------------------------"
      print " Total_area_available_for_agriculture "percentage
      print  "------------------------------------------------"
}
