int ranIndex; //Index of current question
String ques; //Current question
String ans; //Current answers
int numQues = 0; //Number of questions asked 
String nQues = ""; //Which designated question it is (to keep track of answers and points) 


//Display each question 
void displayQuestion() {
  
  ranIndex = int(random(0, questions.size()));  //Choose a random question
  ques = questions.get(ranIndex);  
  ans = answers.get(ranIndex); 

  String[] qParts = splitTokens(ques, "-"); 
  nQues = qParts[0]; 
  String question = ""; 
  
  for(int i = 1; i < qParts.length; i++) 
    question += qParts[i] + "\n"; 
    
  textFont(font2); 
  
  if(nQues.equals("0"))
    textSize(40); 
  else
    textSize(50);   
  
  text(question, width/2, 140); 
  
  
  ansButtons(findNumAns(nQues)); 
  ansText();
  
  numQues += 1;
  println(numQues);
  

    questions.remove(ques); //Remove the question from to array to avoid repeats
    answers.remove(ans); 
  
    
  
}


//Creating the array of questions by taking a certain amount of questions from each set 
ArrayList<String> chooseQuestions() {
  loadTextFiles(); 
  for(int i = 0; i < 5; i++) {
    int random = int(random(0, ieSet.size())); 
    String quess = ieSet.get(random);
    String anss = ieSetAns.get(random);
    questions.add(quess); 
    answers.add(anss); 
    ieSet.remove(quess); 
    ieSetAns.remove(anss);  
  }
  
  for(int i = 5; i < 10; i++) {
    int random = int(random(0, snSet.size())); 
    String quess = snSet.get(random);
    String anss = snSetAns.get(random);
    questions.add(quess); 
    answers.add(anss); 
    snSet.remove(quess); 
    snSetAns.remove(anss);  
  }
  
  for(int i = 10; i < 15; i++) {
    int random = int(random(0, tfSet.size())); 
    String quess = tfSet.get(random);
    String anss = tfSetAns.get(random);
    questions.add(quess); 
    answers.add(anss); 
    tfSet.remove(quess); 
    tfSetAns.remove(anss);  
  }
  
  for(int i = 15; i < 20; i++) {
    int random = int(random(0, pjSet.size())); 
    String quess = pjSet.get(random);
    String anss = pjSetAns.get(random);
    questions.add(quess); 
    answers.add(anss); 
    pjSet.remove(quess); 
    pjSetAns.remove(anss);  
  }
  
  for(int i = 20; i < 29; i++) {
    int random = int(random(0, houseSet.size())); 
    String quess = houseSet.get(random);
    String anss = houseSetAns.get(random);
    questions.add(quess); 
    answers.add(anss); 
    houseSet.remove(quess); 
    houseSetAns.remove(anss);  
  }
  return questions; 
}


//Finds the amount of answers depending on the question 
int findNumAns(String i) {
  
  if(int(i) <= 11)
    return 4; 
  else
    return 2; 
}
