#! /usr/bin/awk -f
BEGIN{
  status=0
  score=0
  i=0
  print "--WELCOME TO THE RANDOM GAME--"
  while(status!=1){
    srand() 
    random_number1=int(rand()*10)
    random_number2=int(rand()*10)
    i++
    print "Q."i": "random_number1 "+" random_number2" = ?\n Enter your answer :" 
    getline no  
    answer=random_number1+random_number2
     if (answer==no){
      score+=10
      print "Congratulations! "
      print "Score : " score
     }
     else{
      status=1
    print "Oh! I'm afraid you have entered a wrong answer. \nCorrect answer :"answer
    print "Final Score : "score
    print "Thanks for playing."
     }
  }
}
