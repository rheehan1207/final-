
class star {
  float x=    random(width); 
   float y  = random(-200,-100); 
   float yspeed  = random(3, 10); ; 

  
 

  

  void fall() { 
    y = y + yspeed; 
 if (y>height/(3/2)) {
   y =random(-200,-100);
  }
  }

  void show() { 
  
    stroke(#FFFEE8); 
    line(x, y, x, y+10); 
  }
}
