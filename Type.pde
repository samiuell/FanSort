class Type {
  
  String code; 
  String name; 
  PImage image; 
  String traits; 
  
  Type(String c, String n, PImage i, int num) {
    this.code = c;
    this.name = n; 
    this.image = i;
    mbtis[num] = this; //Adding every new personality to mbtis array
  }
  
  
  void display() {
    textFont(font); 
    textSize(100); 
    text(this.code, width/2, 450);
    image(this.image, width/2 - 100, 450, 200, 250); 
    
    //Finding each letter in code  
    String iOrE = str(this.code.charAt(0)); 
    String sOrN = str(this.code.charAt(1)); 
    String fOrT = str(this.code.charAt(2)); 
    String pOrJ = str(this.code.charAt(3)); 
    
    //Creating breakdown of letters depending on code 
    String breakdown = "";
    
    if(iOrE.equals("I")) 
      breakdown += "Introvert - "; 
    else
      breakdown += "Extrovert - "; 
    
    if(sOrN.equals("S")) 
      breakdown += "Sensing - "; 
    else
      breakdown += "Intuitive - "; 
      
    if(fOrT.equals("F"))
      breakdown += "Feeling - "; 
    else
      breakdown += "Thinking - "; 
    
    if(pOrJ.equals("P"))
      breakdown += "Perceiving"; 
    else
      breakdown += "Judging";  
      
    textFont(font2); 
    textSize(30); 
    text(breakdown, width/2, 730); 
    String more = "To learn more about your results, check the 'Results' tab on the home page"; 
    text(more, width/2, 780); 
  }
}
