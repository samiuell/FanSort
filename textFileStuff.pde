ArrayList<String> questions = new ArrayList<String>(); 
ArrayList<String> answers = new ArrayList<String>(); 

//String[] questions;
//String[] answers; 
String[] houseSet;
String[] houseSetAns; 
String[] ieSet;
String[] ieSetAns;
String[] snSet; 
String[] snSetAns;
String[] tfSet; 
String[] tfSetAns;
String[] pjSet; 
String[] pjSetAns;
String[] houseDescriptions; 
String[] letterDescriptions; 


//Adds line breaks into a line from the text files 
String formatString(ArrayList<String> t, int l) {
  
  String index = t.get(l); 
  String[] parts = splitTokens(index, "-"); //dashes have been added in the text file where linebreaks should be 
  String string = ""; 
  
  if(t == questions) {//Assigning the designated question number if using questions array
    nQues = parts[0]; 
    for(int i = 1; i < parts.length; i++) 
      string += parts[i] + "\n"; 
  }
  
  else {
    for(int i = 0; i < parts.length; i++) 
      string += parts[i] + "\n"; 
  }
  
  return string; 
}


String formatString(String[] t, int l) {
  
  String[] parts = splitTokens(t[l], "-"); //dashes have been added in the text file where linebreaks should be 
  String string = ""; 
  

    for(int i = 0; i < parts.length; i++) 
      string += parts[i] + "\n"; 
  
  
  return string; 
}


//Loading all text files 
void loadTextFiles() {
  //questions = loadStrings("questions.txt"); 
  //answers = loadStrings("answers.txt"); 
  houseSet = loadStrings("houseSet.txt"); 
  houseSetAns = loadStrings("houseSetAns.txt"); 
  ieSet = loadStrings("ieSet.txt"); 
  ieSetAns = loadStrings("ieSetAns.txt"); 
  snSet = loadStrings("snSet.txt"); 
  snSetAns = loadStrings("snSetAns.txt"); 
  tfSet = loadStrings("tfSet.txt"); 
  tfSetAns = loadStrings("tfSetAns.txt");
  pjSet = loadStrings("pjSet.txt"); 
  pjSetAns = loadStrings("pjSetAns.txt"); 
  houseDescriptions = loadStrings("housesDescriptions.txt"); 
  letterDescriptions = loadStrings("letterBreakdown.txt"); 
}
