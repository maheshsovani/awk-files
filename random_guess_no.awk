#! /usr/bin/awk -f
BEGIN{
  score=0
  srand() 
}
{ 
  no=$0
  mahe=int(rand()*10)
  if (mahe==no){
   print "you guessed it"
   score+=10
   print "your score is " score
  }
  else{
    print "you are wrong correct answer is "mahe
    print "your score is "score
    print "  "
    print "  "
  }
}


