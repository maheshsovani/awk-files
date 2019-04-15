#! /usr/bin/awk -f

BEGIN{
  FS=" "
}
{
  if($1 ~/^1/ ){
    array[$2]=1
    }
    else {
      array2[$2]=1
      }
  }
  {
 for (b in array){
 
 for (i in array2){
    mmm=substr (i,5,7)
  
 if (b~/^3/ && mmm~/^3/){

 print b mmm
   }

}
}
}
