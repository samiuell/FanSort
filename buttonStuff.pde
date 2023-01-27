//Setting every button invisible for when switching screens
void invisButtons() {
  infoBut.setVisible(false); 
  testBut.setVisible(false);
  typesBut.setVisible(false); 
  ansA.setVisible(false); 
  ansB.setVisible(false);
  ansC.setVisible(false); 
  ansD.setVisible(false); 
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
  
  else if(n == 4) {
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
  
  String ansParts[] = splitTokens(ans, "-");
  int num = findNumAns(nQues); 
  
  if(num == 2) {
    ansLeft.setText(ansParts[0]); 
    ansRight.setText(ansParts[1]); 
  }
  
  else if(num == 4) {
    ansA.setText(ansParts[0]); 
    ansB.setText(ansParts[1]); 
    ansC.setText(ansParts[2]); 
    ansD.setText(ansParts[3]); 
  }
}
