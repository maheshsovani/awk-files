#! /usr/bin/awk -f

BEGIN{
  status=0
  srand()
  while(status!=1){
    random_no_1=int(rand()*100)
    random_no_2=int(rand()*100)

    operation["1"]="+"
    operation["2"]="-"
    operation["3"]="*"
    operation["4"]="/"
    random=int(rand()*4+1)
    print random_no_1 operation[random] random_no_2
    getline your_answer
    if(random==1){
      answer=random_no_1+random_no_2}
      if(random==2){
        answer=random_no_1-random_no_2}
        if(random==3){
          answer=random_no_1*random_no_2}
          if(random==4){
            answer=random_no_1/random_no_2}
            if(your_answer==answer){
              print "congratulations your answer is correct"
            }
            else{ status=1
              print"your answer is wrong. correct answer is "answer 
            }
    }
}
