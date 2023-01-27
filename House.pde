class House {
  
  String name; 
  int points; 
  color primeCol; //Customizing results to house colours 
  color secCol; 
  String value; 
  String traits; 
  PImage crest; 
  
  House(String n, color p, color s, String v, String t, int num, PImage c) {
    this.name = n; 
    this.points = 0; //all start with zero points
    this.primeCol = p;
    this.secCol = s; 
    this.value = v; 
    this.traits = t; 
    houses[num] = this; //Adding every new house to houses array
    this.crest = c; 
  }
  
  
  //Adding points toward this house
  void addPoints(int num) {
    this.points += num;   
  }
  
  void display() {
    background(this.primeCol); 
    fill(this.secCol);  
    textAlign(CENTER); 
    textFont(font); 
    textSize(100); 
    text(this.name, width/2, 150); 
    
    textFont(font2); 
    textSize(30); 
    String description = "Your Hogwarts house is " + this.name + "! In this noble house " + value + " is valued above all else.\nStudents of this house are known for being " + this.traits + "."; 
    text(description, width/2, 250); 
  }
  
}
  
  
