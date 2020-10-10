void setup()
  {
    size(250,300);
     noLoop();
  }
  void draw()
  {
    int multiplier =100;
    int sum = 0;
    background(0,10);
 
    for (int y =0; y<3*multiplier;y+=multiplier){
      for(int x=0; x<3*multiplier;x+=multiplier){
        Die die = new Die(x,y);
        die.roll();
         sum +=die.dieValue;
     }  
    }
        fill (255,255,255);
    text("Sum:" + sum, 105,270);
      
  }
  
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
     
      int x = 0;
      int y = 0;
      int dieValue = 1;
      int dotSize = 8;
      Die(int x, int y) 
      {
        this.x=x;
        this.y=y;
        roll();

      }
      void roll()
      {
        dieValue = (int)(Math.random()*6+1);
        show();
 
      }
      void show()
      {
        fill (255,255,255);
        rect(x,y,50,50);
        fill (0,0,0);
        if (dieValue==1) {
          ellipse(x+25,y+25,dotSize,dotSize);
        } else if (dieValue==2) {          
          ellipse (x+12,y+12,dotSize,dotSize);
          ellipse (x+38,y+38,dotSize,dotSize);
        } else if (dieValue==3) {          
          ellipse (x+12,y+12,dotSize,dotSize);
          ellipse (x+25,y+25,dotSize,dotSize);
          ellipse (x+38,y+38,dotSize,dotSize);
        } else if (dieValue==4) {          
          ellipse (x+12,y+12,dotSize,dotSize);
          ellipse (x+38,y+12,dotSize,dotSize);
          ellipse (x+38,y+38,dotSize,dotSize);
          ellipse (x+12,y+38,dotSize,dotSize);
        } else if (dieValue==5) {          
          ellipse (x+12,y+12,dotSize,dotSize);
          ellipse (x+38,y+12,dotSize,dotSize);
          ellipse (x+38,y+38,dotSize,dotSize);
          ellipse (x+12,y+38,dotSize,dotSize);
          ellipse (x+25,y+25,dotSize,dotSize);
        } else if (dieValue==6) {
          ellipse (x+12,y+12,dotSize,dotSize);
          ellipse (x+38,y+12,dotSize,dotSize);
          ellipse (x+38,y+38,dotSize,dotSize);
          ellipse (x+12,y+38,dotSize,dotSize);
          ellipse (x+12,y+25,dotSize,dotSize);
          ellipse (x+38,y+25,dotSize,dotSize);
         

        }
       }
  }
