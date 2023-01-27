int ranIndex; //Index of current question
int numQues = 0; //Number of questions asked 
String nQues = ""; //Which designated question it is (to keep track of answers and points) 


//Display each question 
void displayQuestion() {
  ranIndex = int(random(0, questions.size()));  //Choose a random question
  String question = formatString(questions, ranIndex); 
  textFont(font2); 
  textSize(50);   
  text(question, width/2, 140); 
  
  ansButtons(findNumAns(nQues)); 
  ansText();
  
  numQues += 1;
  String index = questions.get(ranIndex); 
  questions.remove(index); 
  //questions = removeQuestion(questions, ranIndex); //Remove the question from to array to avoid repeats
  //answers = removeQuestion(answers, ranIndex); 
  
}


//Creating the array of questions by taking a certain amount of questions from each set 
void chooseQuestions() {
  
  for(int i = 0; i < 5; i++) {
    int random = int(random(0, ieSet.length)); 
    questions.add(ieSet[random]); 
    answers.add(ieSetAns[random]);
    ieSet = removeQuestion(ieSet, random); 
    ieSetAns = removeQuestion(ieSetAns, random); 
  }
  
  for(int i = 5; i < 5; i++) {
    int random = int(random(0, snSet.length)); 
    questions.add(snSet[random]); 
    answers.add(snSetAns[random]); 
    snSet = removeQuestion(snSet, random); 
    snSetAns = removeQuestion(snSetAns, random); 
  }
  
  for(int i = 10; i < 5; i++) {
    int random = int(random(0, tfSet.length)); 
    questions.add(tfSet[random]); 
    answers.add(tfSetAns[random]); 
    tfSet = removeQuestion(tfSet, random); 
    tfSetAns = removeQuestion(tfSetAns, random); 
  }
  
  for(int i = 15; i < 5; i++) {
    int random = int(random(0, pjSet.length)); 
    questions.add(pjSet[random]); 
    answers.add(pjSetAns[random]); 
    pjSet = removeQuestion(pjSet, random); 
    pjSetAns = removeQuestion(pjSetAns, random); 
  }
  
  for(int i = 20; i < 30; i++) {
    int random = int(random(0, houseSet.length)); 
    questions.add(houseSet[random]); 
    answers.add(houseSetAns[random]); 
    houseSet = removeQuestion(houseSet, random); 
    houseSetAns = removeQuestion(houseSetAns, random); 
  }
}


//Removes question by swapping it with the last item and then shortens the array
String[] removeQuestion(String[] q, int num) {
  int i = q.length-1; 
  String old = q[num]; 
  q[num] = q[i]; 
  q[i] = old; 
  q = shorten(q); 
  return q; 
}


//Finds the amount of answers depending on the question 
int findNumAns(String i) {
  
  if(i.equals("0") || i.equals("3") || i.equals("4") || i.equals("8")) 
    return 3;
  else if(i.equals("1") || i.equals("2") || i.equals("5") || i.equals("6") || i.equals("7") || i.equals("9") || i.equals("10"))
    return 4; 
  else
    return 2; 
}
