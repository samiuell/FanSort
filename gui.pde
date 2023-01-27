/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void infoButClicked(GButton source, GEvent event) { //_CODE_:infoBut:250126:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:infoBut:250126:

public void testButClicked(GButton source, GEvent event) { //_CODE_:testBut:974717:
  quiz(); 
  int numAns = findNumAns(nQues); 
  ansButtons(numAns); 
} //_CODE_:testBut:974717:

public void typesButClicked(GButton source, GEvent event) { //_CODE_:typesBut:743165:
  aboutResults(); 
} //_CODE_:typesBut:743165:

public void ansBClicked(GButton source, GEvent event) { //_CODE_:ansB:895482:
  //GIVING APPROPRIATE POINTS FOR EACH ANSWER DEPENDING ON QUESTION
  houses[1].addPoints(1); 
  quiz(); 
} //_CODE_:ansB:895482:

public void ansAClicked(GButton source, GEvent event) { //_CODE_:ansA:483030:
  houses[3].addPoints(1); 
  quiz(); 
} //_CODE_:ansA:483030:

public void ansCClicked(GButton source, GEvent event) { //_CODE_:ansC:335330:
  houses[0].addPoints(1); 
  quiz();  
} //_CODE_:ansC:335330:

public void ansDClicked(GButton source, GEvent event) { //_CODE_:ansD:905870:
  houses[2].addPoints(1); 
  quiz(); 
} //_CODE_:ansD:905870:

public void ans1Clicked(GButton source, GEvent event) { //_CODE_:ans1:703388:
  
  if(nQues.equals("0")) {
    houses[2].addPoints(1); 
  }
  
  else if(nQues.equals("3")) {
    houses[2].addPoints(1); 
    houses[0].addPoints(1); 
  }
  
  else if(nQues.equals("4")) {
    houses[3].addPoints(1); 
  }
  
  else if(nQues.equals("8")) {
    houses[1].addPoints(1); 
  }
  
  quiz(); 
} //_CODE_:ans1:703388:

public void ans2Clicked(GButton source, GEvent event) { //_CODE_:ans2:324562:
  
  if(nQues.equals("0")) {
    houses[3].addPoints(1); 
  }
  
  else if(nQues.equals("3")) {
    houses[1].addPoints(1); 
  }
  
  else if(nQues.equals("4")) {
    houses[0].addPoints(1); 
    houses[1].addPoints(1); 
  }
  
  else if(nQues.equals("8")) {
    houses[3].addPoints(1); 
  }
  
  quiz();
} //_CODE_:ans2:324562:

public void ans3Clicked(GButton source, GEvent event) { //_CODE_:ans3:790013:
  
  if(nQues.equals("0")) {
    houses[0].addPoints(1); 
    houses[1].addPoints(1); 
  }
  
  else if(nQues.equals("3")) {
    houses[3].addPoints(1); 
  }
  
  else if(nQues.equals("4")) {
    houses[2].addPoints(1); 
  }
  
  else if(nQues.equals("8")) {
    houses[0].addPoints(1); 
    houses[2].addPoints(1); 
  }
  
  quiz();

} //_CODE_:ans3:790013:

public void ansLeftClicked(GButton source, GEvent event) { //_CODE_:ansLeft:276557:
  
  if(int(nQues) < 5) 
    letters[0] += 1; 
  
  else if(int(nQues) < 10)
    letters[2] += 1; 
    
  else if(int(nQues) < 15) 
    letters[5] += 1; 
  
  else if(int(nQues) < 20) 
    letters[6] += 1; 
    
  quiz(); 
} //_CODE_:ansLeft:276557:

public void ansRightClicked(GButton source, GEvent event) { //_CODE_:ansRight:801816:
  
  if(int(nQues) < 5) 
    letters[1] += 1; 
  
  else if(int(nQues) < 10)
    letters[3] += 1; 
  
  else if(int(nQues) < 15)
    letters[4] += 1; 
  
  else if(int(nQues) < 20) 
    letters[7] += 1; 
  
  quiz(); 
} //_CODE_:ansRight:801816:

public void homeButtonClicked(GButton source, GEvent event) { //_CODE_:homeButton:558459:
  startingScreen(); //Takes back to home if clicked on results page
} //_CODE_:homeButton:558459:

public void housesButClicked(GButton source, GEvent event) { //_CODE_:housesBut:362736:
  aboutHouses(); 
} //_CODE_:housesBut:362736:

public void mbtiButClicked(GButton source, GEvent event) { //_CODE_:mbtiBut:829262:
  aboutMBTI(); 
} //_CODE_:mbtiBut:829262:

public void backButClicked(GButton source, GEvent event) { //_CODE_:backBut:738050:
  aboutResults(); 
} //_CODE_:backBut:738050:

public void home2Clicked(GButton source, GEvent event) { //_CODE_:home2:536338:
  startingScreen(); 
} //_CODE_:home2:536338:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  G4P.setDisplayFont("Yu Gothic", G4P.BOLD, 30);
  G4P.setInputFont("Verdana", G4P.PLAIN, 12);
  G4P.setSliderFont("Arial", G4P.PLAIN, 11);
  surface.setTitle("Sketch Window");
  infoBut = new GButton(this, 300, 300, 400, 100);
  infoBut.setText("About FanSort");
  infoBut.addEventHandler(this, "infoButClicked");
  testBut = new GButton(this, 300, 500, 400, 100);
  testBut.setText("Do the Test");
  testBut.addEventHandler(this, "testButClicked");
  typesBut = new GButton(this, 300, 700, 400, 100);
  typesBut.setText("About the Results");
  typesBut.addEventHandler(this, "typesButClicked");
  ansB = new GButton(this, 550, 300, 400, 100);
  ansB.setText("B");
  ansB.addEventHandler(this, "ansBClicked");
  ansA = new GButton(this, 50, 300, 400, 100);
  ansA.setText("A");
  ansA.addEventHandler(this, "ansAClicked");
  ansC = new GButton(this, 50, 600, 400, 100);
  ansC.setText("C");
  ansC.addEventHandler(this, "ansCClicked");
  ansD = new GButton(this, 550, 600, 400, 100);
  ansD.setText("D");
  ansD.addEventHandler(this, "ansDClicked");
  ans1 = new GButton(this, 300, 299, 400, 100);
  ans1.setText("1");
  ans1.addEventHandler(this, "ans1Clicked");
  ans2 = new GButton(this, 300, 500, 400, 100);
  ans2.setText("2");
  ans2.addEventHandler(this, "ans2Clicked");
  ans3 = new GButton(this, 300, 700, 400, 100);
  ans3.setText("3");
  ans3.addEventHandler(this, "ans3Clicked");
  ansLeft = new GButton(this, 50, 500, 400, 100);
  ansLeft.setText("left");
  ansLeft.addEventHandler(this, "ansLeftClicked");
  ansRight = new GButton(this, 550, 500, 400, 100);
  ansRight.setText("right");
  ansRight.addEventHandler(this, "ansRightClicked");
  homeButton = new GButton(this, 300, 811, 400, 100);
  homeButton.setText("Home");
  homeButton.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  homeButton.addEventHandler(this, "homeButtonClicked");
  housesBut = new GButton(this, 300, 450, 400, 100);
  housesBut.setText("Houses");
  housesBut.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  housesBut.addEventHandler(this, "housesButClicked");
  mbtiBut = new GButton(this, 300, 650, 400, 100);
  mbtiBut.setText("MBTI");
  mbtiBut.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  mbtiBut.addEventHandler(this, "mbtiButClicked");
  backBut = new GButton(this, 835, 8, 150, 50);
  backBut.setText("Back");
  backBut.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  backBut.addEventHandler(this, "backButClicked");
  home2 = new GButton(this, 836, 9, 150, 50);
  home2.setTextAlign(GAlign.CENTER, GAlign.LEFT);
  home2.setText("Home");
  home2.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  home2.addEventHandler(this, "home2Clicked");
}

// Variable declarations 
// autogenerated do not edit
GButton infoBut; 
GButton testBut; 
GButton typesBut; 
GButton ansB; 
GButton ansA; 
GButton ansC; 
GButton ansD; 
GButton ans1; 
GButton ans2; 
GButton ans3; 
GButton ansLeft; 
GButton ansRight; 
GButton homeButton; 
GButton housesBut; 
GButton mbtiBut; 
GButton backBut; 
GButton home2; 