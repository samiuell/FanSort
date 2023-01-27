ArrayList<String> questions = new ArrayList<String>(); 
ArrayList<String> answers = new ArrayList<String>(); 

String[] houseDescriptions; 
String[]letterDescriptions; 

ArrayList<String> houseSet;
ArrayList<String> houseSetAns; 
ArrayList<String> ieSet; 
ArrayList<String> ieSetAns; 
ArrayList<String> snSet; 
ArrayList<String> snSetAns; 
ArrayList<String> tfSet; 
ArrayList<String> tfSetAns; 
ArrayList<String> pjSet; 
ArrayList<String> pjSetAns; 


//Adds line breaks into a line from the text files 
String formatString(String[] t, int l) {
  
  String[] parts = splitTokens(t[l], "-"); //dashes have been added in the text file where linebreaks should be 
  String string = ""; 
  
    for(int i = 0; i < parts.length; i++) 
      string += parts[i] + "\n"; 
  
  return string; 
}


//Loading all text files 
void loadTextFiles() {
  String[] houseSetF = loadStrings("houseSet.txt"); 
  String[] houseSetAnsF = loadStrings("houseSetAns.txt"); 
  houseSet = convertArray(houseSetF); 
  houseSetAns = convertArray(houseSetAnsF); 
  String[] ieSetF = loadStrings("ieSet.txt");
  String[] ieSetAnsF = loadStrings("ieSetAns.txt"); 
  ieSet = convertArray(ieSetF); 
  ieSetAns = convertArray(ieSetAnsF); 
  String[] snSetF = loadStrings("snSet.txt"); 
  String[] snSetAnsF = loadStrings("snSetAns.txt"); 
  snSet = convertArray(snSetF); 
  snSetAns = convertArray(snSetAnsF); 
  String[] tfSetF = loadStrings("tfSet.txt"); 
  String[] tfSetAnsF = loadStrings("tfSetAns.txt");
  tfSet = convertArray(tfSetF); 
  tfSetAns = convertArray(tfSetAnsF); 
  String[] pjSetF = loadStrings("pjSet.txt"); 
  String[] pjSetAnsF = loadStrings("pjSetAns.txt"); 
  pjSet = convertArray(pjSetF); 
  pjSetAns = convertArray(pjSetAnsF); 
  houseDescriptions = loadStrings("housesDescriptions.txt"); 
  letterDescriptions = loadStrings("letterBreakdown.txt"); 
}

ArrayList<String> convertArray(String[] f) {
  ArrayList<String> a = new ArrayList<String>(); 
  
  for(String s: f) 
    a.add(s); 
    
  return a; 
}
