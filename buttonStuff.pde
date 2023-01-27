//Setting every button invisible for when switching screens
void invisButtons() {
  infoBut.setVisible(false); 
  testBut.setVisible(false);
  typesBut.setVisible(false); 
  ansA.setVisible(false); 
  ansB.setVisible(false);
  ansC.setVisible(false); 
  ansD.setVisible(false); 
  ans1.setVisible(false); 
  ans2.setVisible(false); 
  ans3.setVisible(false); 
  ansLeft.setVisible(false);
  ansRight.setVisible(false); 
  homeButton.setVisible(false); 
  housesBut.setVisible(false); 
  mbtiBut.setVisible(false); 
  backBut.setVisible(false); 
  home2.setVisible(false); 
}


//Displaying the correct amount of answers
void ansButtons(int n) {
  if(n == 2) {
    ansLeft.setVisible(true); 
    ansRight.setVisible(true); 
  }
  
  else if(n == 3) {
    ans1.setVisible(true); 
    ans2.setVisible(true);
    ans3.setVisible(true); 
  }
  
  else {
    ansA.setVisible(true); 
    ansB.setVisible(true); 
    ansC.setVisible(true); 
    ansD.setVisible(true); 
  }
}


//Buttons for the home screen
void homeButtons() {
  infoBut.setVisible(true); 
  typesBut.setVisible(true); 
  testBut.setVisible(true); 
}

  
//Buttons for about results page 
void aboutResultsButtons() {
  housesBut.setVisible(true); 
  mbtiBut.setVisible(true);
  home2.setVisible(true); 
}


//Displaying the correct answers for each question
void ansText() {
  
  String index = answers.get(ranIndex); 
  String ansParts[] = splitTokens(index, "-");
  int num = findNumAns(nQues); 
  
  if(num == 2) {
    ansLeft.setText(ansParts[0]); 
    ansRight.setText(ansParts[1]); 
  }
  
  else if(num == 3) { 
    ans1.setText(ansParts[0]); 
    ans2.setText(ansParts[1]); 
    ans3.setText(ansParts[2]); 
  }
  
  else if(num == 4) {
    ansA.setText(ansParts[0]); 
    ansB.setText(ansParts[1]); 
    ansC.setText(ansParts[2]); 
    ansD.setText(ansParts[3]); 
  }
}
