import g4p_controls.*;


//Global Variables
House[] houses = new House[4]; //Stores 4 houses
Type[] mbtis = new Type[16]; //Stores 16 personalities 
int[] letters = new int[8]; //Stores points for each letter in mbti codes

//Making houses global variables
House slytherin; 
House gryffindor; 
House ravenclaw; 
House hufflepuff; 

//Fonts 
PFont font; 
PFont font2; 

int res = 0; 

void setup() {
  
  size(1000, 900); 
  createGUI(); 
  
  //Font 
  font = createFont("Oswald-Medium.ttf", 150);   
  font2 = createFont("Oswald-Regular.ttf", 150);  
  loadTextFiles();
  chooseQuestions(); 
  startingScreen(); 
  loadPics(); 

  
  //Creating the four houses
  slytherin = new House("Slytherin", color(26,71,42), color(150), "ambition", "driven, cunning. and adaptable", 0, slythImag); 
  gryffindor = new House("Gryffindor", color(116,0,1), color(211,166,37), "courage", "passionate, bold, and chivalrous", 1, gryffImag);   
  ravenclaw = new House("Ravenclaw", color(14,26,64), color(135, 99, 45), "knowledge", "curious, imaginative, and witty", 2, ravenImag); 
  hufflepuff = new House("Hufflepuff", color(236,185,57), color(0, 0, 0), "justice", "loyal, dependable, and compassionate", 3, huffImag); 
  
  //Creating the sixteen personalities
  Type istj = new Type("ISTJ", "Inspector", istjImag, 0); 
  Type istp = new Type("ISTP", "Crafter", istpImag, 1); 
  Type isfj = new Type("ISFJ", "Protector", isfjImag, 2);
  Type isfp = new Type("ISFP", "Artist", isfpImag, 3); 
  Type infj = new Type("INFJ", "Advocate", infjImag, 4); 
  Type infp = new Type("INFP", "Mediator", infpImag, 5); 
  Type intj = new Type("INTJ", "Architect", intjImag, 6); 
  Type intp = new Type("INTP", "Thinker", intpImag, 7); 
  Type estp = new Type("ESTP", "Persuader", estpImag, 8); 
  Type estj = new Type("ESTJ", "Director", estjImag, 9); 
  Type esfp = new Type("ESFP", "Performer", esfpImag, 10); 
  Type esfj = new Type("ESFJ", "Caregiver", esfjImag, 11); 
  Type enfp = new Type("ENFP", "Champion", enfpImag, 12); 
  Type enfj = new Type("ENFJ", "Giver", enfjImag, 13); 
  Type entp = new Type("ENTP", "Debater", entpImag, 14); 
  Type entj = new Type("ENTJ", "Commander", entjImag, 15);   
}


void draw() {
}
