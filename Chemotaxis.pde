int xPos, yPos;
Bacteria[] Bob;

void setup(){
  size(350, 350);
  Bob = new Bacteria[100];
  for(int i = 0; i < Bob.length; i++){
    Bob[i] = new Bacteria();
  }
}  

void draw(){    
 background(255, 0, 0);
 for(int i = 0; i < Bob.length; i++){
    Bob[i].display();
    Bob[i].move();
  }
} 

class Bacteria{      
  int xPos, yPos; 
  int clear = (int)(Math.random() * 256);
  Bacteria() {
    xPos = width/2;
    yPos = height/2;
  }
  
  void move(){
    xPos += (int)(Math.random() * 7) - 3;
    yPos += (int)(Math.random() * 7) - 3;
    if(mousePressed){
      xPos = (int)(Math.random() * width);
      yPos = (int)(Math.random() * height);
    }
}
  
  void display(){
    fill(255, 0, 0, 0);
    ellipse(xPos, yPos, 30, 30);
    fill(0, 255, 0, clear);
    ellipse(xPos, yPos, 30, 30);
  }     
}