Die bob;
int one, two, three, four, five, six;
int sum = 0;

void setup()
  {
      size(620,700);
      textAlign(CENTER,CENTER);
      rectMode(CENTER);
      noLoop();
  }
  void draw()
  { 
    background(191,213,250);
    rect(300,300,500,500);
    int j = 1;
      while (j <= 9){
        int i = 1;
        while (i <= 9){
          bob = new Die(50*(i+1),50*(j+1));
          bob.roll();
          bob.show();
          i++;
        }
        j++;
      }
      fill(0);
      sum = 1*one + 2*two + 3*three + 4*four + 5*five + 6*six;
      text("total = " + sum, 315, 575);
      text(": "+ one, 115, 575);
      text(": "+ two, 115, 600);
      text(": "+ three, 115, 625);
      text(": "+ four, 180, 575);
      text(": "+ five, 180, 600);
      text(": "+ six, 180, 625);
      fill(255);
  }
  void mousePressed()
  {
      redraw(); //rolls dice again when clicked
      one = 0; 
      two = 0;
      three = 0;
      four = 0;
      five = 0;
      six = 0;
      sum = 0;
    
      
  }
  class Die //models one single dice cube
  {
    int myX, myY, numRolled;
    
      //member variable declarations here
      
      Die(int x, int y) //constructor
      {
          myX = x;//variable initializations here
          myY = y;
      }
      void roll()
      {
       numRolled = (int)((Math.random()*6)+1);
      }
      void show()
      {   
          int siz = 5;
          fill(204,255,255);
          rect(90,575,20,20,5);
          fill(0);
          ellipse(90,575,2,2);
          //one
          
          fill(149,246,246);
          rect(90,600,20,20,5);
          fill(0);
          ellipse(86,596,2,2);
          ellipse(94,604,2,2);
          //two
          
          fill(76,230,230);
          rect(90,625,20,20,5);
          fill(0);
          ellipse(85,621,2,2);
          ellipse(90,625,2,2);
          ellipse(95,629,2,2);
          //three
          
          fill(215,215,255);
          rect(155,575,20,20,5);
          fill(0);
          ellipse(150,570,2,2);
          ellipse(150,580,2,2);
          ellipse(160,570,2,2);
          ellipse(160,580,2,2);
          //four
          
          fill(181,171,246);
          rect(155,600,20,20,5);
          fill(0);
          ellipse(150,595,2,2);
          ellipse(155,600,2,2);
          ellipse(150,605,2,2);
          ellipse(160,595,2,2);
          ellipse(160,605,2,2);
          //five
          
          fill(153,153,255);
          rect(155,625,20,20,5);
          fill(0);
          ellipse(150,621,2,2);
          ellipse(150,625,2,2);
          ellipse(150,629,2,2);
          ellipse(160,621,2,2);
          ellipse(160,625,2,2);
          ellipse(160,629,2,2);
          //six
          
          if (numRolled == 1){
            fill(176,255,255);
            rect(myX, myY, 40,40,10);
            fill(0);
            ellipse(myX,myY,siz,siz);
            one++;
            
          } 
          else if (numRolled == 2){
            fill(149,246,246);
            rect(myX, myY, 40,40,10);
            fill(0);
            ellipse(myX-10,myY-10,siz,siz);
            ellipse(myX+10, myY+10,siz,siz);
            two++;
          }
          else if (numRolled == 3){
            fill(76,230,230);
            rect(myX, myY, 40,40,10);
            fill(0);
            ellipse(myX-10,myY-10,siz,siz);
            ellipse(myX,myY,5,5);
            ellipse(myX+10, myY+10,siz,siz);
            three++;
          }
          else if (numRolled == 4){
            fill(215,215,255);
            rect(myX, myY, 40,40,10);
            fill(0);
            ellipse(myX-10,myY-10,siz,siz);
            ellipse(myX+10, myY+10,siz,siz);
            ellipse(myX+10,myY-10,siz,siz);
            ellipse(myX-10,myY+10,siz,siz);
            four++;
          }
          else if (numRolled == 5){
            fill(181,171,246);
            rect(myX, myY, 40,40,10);
            fill(0);
            ellipse(myX-10,myY-10,siz,siz);
            ellipse(myX,myY,siz,siz);
            ellipse(myX+10, myY+10,siz,siz);
            ellipse(myX+10,myY-10,siz,siz);
            ellipse(myX-10,myY+10,siz,siz);
            five++;
          }
          else {
            fill(153,153,255);
            rect(myX, myY, 40,40,10);
            fill(0);
            ellipse(myX-8,myY-8,siz-1,siz-1);
            ellipse(myX-8,myY,siz-1,siz-1);
            ellipse(myX-8,myY+8,siz-1,siz-1);
            ellipse(myX+8,myY-8,siz-1,siz-1);
            ellipse(myX+8,myY,siz-1,siz-1);
            ellipse(myX+8,myY+8,siz-1,siz-1);
            six++;
          }
      }
  }
  
