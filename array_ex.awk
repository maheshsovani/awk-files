#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  regions[$2]
  countries[$1]=$2
}

END{
  for(region in regions){
    print region}
    {
      for (country in countries){
        if (region==countries[country]){

          }
          total_population[region]+=$3

        }
        print total_population[region]
    }
}
