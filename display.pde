//PICTURES 
  //Houses
PImage ravenImag;
PImage huffImag;
PImage gryffImag;
PImage slythImag; 
  //mbti
PImage intjImag; 
PImage intpImag; 
PImage isfjImag; 
PImage isfpImag; 
PImage istjImag; 
PImage istpImag; 
PImage infpImag; 
PImage infjImag; 
PImage estpImag; 
PImage estjImag; 
PImage esfpImag; 
PImage esfjImag; 
PImage entpImag; 
PImage entjImag; 
PImage enfpImag; 
PImage enfjImag; 


void loadPics() {
  //Houses
  ravenImag = loadImage("pictures/crests/ravenclaw.png"); 
  gryffImag = loadImage("pictures/crests/gryffindor.png"); 
  huffImag = loadImage("pictures/crests/hufflepuff.png"); 
  slythImag = loadImage("pictures/crests/slytherin.png"); 
  //mbti
  intjImag = loadImage("pictures/mbti/INTJ.png");   
  intpImag = loadImage("pictures/mbti/INTP.png"); 
  isfjImag = loadImage("pictures/mbti/ISFJ.png"); 
  isfpImag = loadImage("pictures/mbti/ISFP.png"); 
  istjImag = loadImage("pictures/mbti/ISTJ.png"); 
  istpImag = loadImage("pictures/mbti/ISTP.png"); 
  infpImag = loadImage("pictures/mbti/INFP.png"); 
  infjImag = loadImage("pictures/mbti/INFJ.png"); 
  estpImag = loadImage("pictures/mbti/ESTP.png"); 
  estjImag = loadImage("pictures/mbti/ESTJ.png"); 
  esfpImag = loadImage("pictures/mbti/ESFP.png"); 
  esfjImag = loadImage("pictures/mbti/ESFJ.png"); 
  entpImag = loadImage("pictures/mbti/ENTP.png"); 
  entjImag = loadImage("pictures/mbti/ENTJ.png"); 
  enfpImag = loadImage("pictures/mbti/ENFP.png"); 
  enfjImag = loadImage("pictures/mbti/ENFJ.png"); 
}


//SCREENS

  //Home Screen
void startingScreen() { 
  background(139, 99, 148); 
  invisButtons(); 
  homeButtons(); 
  textFont(font); 
  textAlign(CENTER); 
  fill(255); 
  text("FanSort", width/2, 200); 
}

 
  //Quiz page 
void quiz() {
  background(88, 128, 106); 
  invisButtons();
  displayQuestion(); 
 
  
  if(numQues == 30) //After 10 questions find results
    resultsPage(); 
}


  //Results page 
void resultsPage() {
  invisButtons(); 
  homeButton.setVisible(true); 
  House house = calculateHouse(houses); 
  house.display();
  Type type = calculateType(letters, mbtis);
  type.display(); 
}


  //Houses info page 
void aboutHouses() {
  invisButtons(); 
  backBut.setVisible(true); 
  
    //Making four colour banners
  fill(ravenclaw.primeCol); 
  rect(0, 0, width, 225); 
  fill(slytherin.primeCol); 
  rect(0, 225, width, 225); 
  fill(gryffindor.primeCol); 
  rect(0, 450, width, 225); 
  fill(hufflepuff.primeCol); 
  rect(0, 675, width, 225); 
  
    //Display House crests
  image(ravenImag, 30, 0, 200, 235); 
  image(slythImag, 5, 220, 250, 235);
  image(gryffImag, 35, 455, 190, 215);
  image(huffImag, 35, 670, 205, 235); 
  
    //Formatting house descriptions
  String ravenDescription = formatString(houseDescriptions, 0); 
  String slytherinDescription = formatString(houseDescriptions, 1); 
  String gryffindorDescription = formatString(houseDescriptions, 2); 
  String hufflepuffDescription = formatString(houseDescriptions, 3); 
  
    //Descriptions 
  textFont(font2); 
  textSize(20); 
  textAlign(LEFT);
  fill(232, 166, 100); 
  text(ravenDescription, 230, 50); 
  fill(180); 
  text(slytherinDescription, 230, 260);
  fill(207, 179, 33); 
  text(gryffindorDescription, 230, 480); 
  fill(0); 
  text(hufflepuffDescription, 240, 710);
  
}


  //MBTI info page 
void aboutMBTI() {
  background(174, 167, 196); 
  invisButtons(); 
  backBut.setVisible(true); 
  
    //Titles
  textAlign(CENTER); 
  textFont(font);
  textSize(80);
  text("Breaking Down the Code", width/2, 125);
  text("I or E", 125, 350);
  text("S or N", 125, 500);
  text("F or T", 125, 650);
  text("P or J", 125, 800);
  
    //Descriptions 
  String iDescription = formatString(letterDescriptions, 0); 
  String sDescription = formatString(letterDescriptions, 1); 
  String fDescription = formatString(letterDescriptions, 2); 
  String pDescription = formatString(letterDescriptions, 3); 
  
  textFont(font2); 
  textSize(30); 
  text("The Myers-Brigg Type Indicator codes are broken down letter by letter, \neach representing a different part of your personality.", width/2, 170);
  textSize(20);
  textAlign(LEFT); 
  text(iDescription, 250, 300); 
  text(sDescription, 250, 450); 
  text(fDescription, 250, 600);
  text(pDescription, 250, 750);
}


  //Results page 
void aboutResults() {
  invisButtons(); 
  background(135, 82, 68); 
  aboutResultsButtons(); 
  textFont(font); 
  textSize(100); 
  fill(255);
  textAlign(CENTER); 
  text("Which do you want to\nknow more about?", width/2, 160); 
}
 

//Gridlines 
void gridlines() {
  
  int grid = 50; 
  for (int i = 0; i < width; i+=grid) {
    line (i, 0, i, height);
  }
  for (int i = 0; i < height; i+=grid) {
    line (0, i, width, i);
  }
 
}
