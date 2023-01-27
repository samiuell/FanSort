//Finds their house result
House calculateHouse(House[] h) {
  
  //Finds highest amount of points in houses array
  int highest = 0; 
  House winner = null; 
  
  for(int i = 0; i < h.length; i++) {
    House temp = h[i]; 
    
    if(temp.points > highest) {
      highest = temp.points; 
      winner = h[i]; 
    }
  }
  return winner;
}


//Finds their MBTI result 
Type calculateType(int l[], Type m[]) {
  
  //Finds their mbti code by comparing each pair of letters for points (ex. does I have more points or E?) 
  String result = ""; 
  
  if(l[0] > l[1]) 
    result += "I"; 
  else
    result += "E"; 
  
  if(l[2] > l[3]) 
    result += "S"; 
  else
    result += "N"; 
  
  if(l[4] > l[5]) 
    result += "F"; 
  else
    result += "T"; 
    
  if(l[6] > l[7]) 
    result += "P"; 
  else
    result += "J";  

  //Finds the mbti by comparing result to codes in mbtis array
  for(int i = 0; i < m.length; i++) {
    Type temp = m[i]; 
    if(result.equals(temp.code)) {
      Type winner = temp; 
      return winner; 
    }
    else {
      Type winner = null; 
    }
  }
  return m[0];  
}
