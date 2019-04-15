#! /usr/bin/awk -f

BEGIN{
  FS="|"
  infant_mortality_rate=0
  infant_mortality_country=""
}

{
  if ($9 > 20000 && infant_mortality_rate < $8){
    infant_mortality_rate=$8
    infant_mortality_country=$1 
  }
  else{
    infant_mortality_rate=infant_mortality_rate
  infant_mortality_country=infant_mortality_country
  }
}

END{ print infant_mortality_rate
     print infant_mortality_country
}
