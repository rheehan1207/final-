int circlesX[];
int circlesY[];
int circleX[];
int circleY[];
int numCircles=50;
int xspacing=5;
int w;
import processing.sound.*;
SoundFile file;
String audioName = "OBE.mp3";
String path;
float theta= 0.0;
float amplitude= 30;
float period = 700;
float dx;
float[] yvalues;

star[] stars= new star[400];
void setup()
{
  
  fullScreen();
  
    for (int i= 0; i < stars.length; i++) {
    stars[i]=new star();
    }
  noStroke();
  circlesX = new int[numCircles];
  circlesY = new int[numCircles];
  file = new SoundFile(this, "OBE.mp3");
  file.play(); 

  circleX = new int[numCircles];
  circleY = new int[numCircles];

  for (int i=0; i< numCircles; i++)
  { 
    circlesX[i]= (70*i);
    circlesY[i]= 690;
  }
  for (int i=0; i< numCircles; i++)
  { 
    circleX[i]= (80*i);
    circleY[i]= 515;
  }
    for (int i=0; i< numCircles; i++)
  { 
    circleX[i]= (83*i);
    circleY[i]= 870;
    
  }  
  for (int i=0; i< numCircles; i++)
  { 
    circleX[i]= (73*i);
    circleY[i]= 930;
    
  }  
   for (int i=0; i< numCircles; i++)
  { 
    circleX[i]= (78*i);
    circleY[i]= 930;
    
  }  


  w= width;
  dx= (30/period) * xspacing;
  yvalues = new float[w/xspacing];
    
    
} 

void draw()
{
  
  background(#7A76AA);
 fill(#FFF8B4);
  ellipse(1125, 250, 100, 100);
   
  for (int i= 0; i<stars.length; i++) {
    stars[i].fall();
    stars[i].show();
   
  }
  
    noStroke();
calcWave();

  fill(#B7BAF5);
 // rect(0, 500, width, 200);
  for (int i=0; i< numCircles; i++)
  {
    int directionX= 515;
    ellipse(circleX[i], height/2+100+yvalues[i], 100, 90);
  }
  fill(#323790);
  for (int i=0; i< numCircles; i++)
  {
    int directionX= 680;
    ellipse(circlesX[i], height/2+140+yvalues[i], 100, 90);
  }
  fill(#8187ED);
   for (int i=0; i< numCircles; i++)
  {
   
    int directionX= 680;
    ellipse(circlesX[i], height/2+180+yvalues[i], 100, 90);
  }
  fill(#152B67);
  
   for (int i=0; i< numCircles; i++)
  {
    int directionX= 680;
    ellipse(circlesX[i], height/2+200+yvalues[i], 100, 90);
  }
  fill(#1D2A4B);
  for (int i=0; i< numCircles; i++)
  {
    int directionX= 680;
    ellipse(circlesX[i], height/2+222+yvalues[i], 100, 90);

}




}
void calcWave() {
 
  theta += 0.02;
 
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*2*amplitude;
    x+=dx;
  }
fill(#1D2A4B);
rect(0,630,1500,1400);
}
 
 
