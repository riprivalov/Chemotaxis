Bacteria[] bob;
 void setup()   
 {     
 	size(1000,1000);
	bob = new Bacteria[5000];
	for(int i=0; i<bob.length; i++)
	bob[i] = new Bacteria();  
 }   
 void draw()   
 {    
 	background(245, 240, 175);
 	for(int i=0; i<bob.length; i++)
    {
      bob[i].show();
      bob[i].walk();
    }
 }  

 class Bacteria    
 {     
 	int colornumber = (int)(Math.random()*3)+1;
 	int decimal = (int)(Math.random()*601)-300;
 	int myX, myY;
 	Bacteria()
 	{
 		myX = myY=500;
 	}
 	void walk()
 	{
 		myX = myX +(int)(Math.random()*11)-5;
    	myY = myY +(int)(Math.random()*11)-5;
 	}
 	void show()
	  {
  	if (colornumber == 1) {
  		fill(245,44,15);
  		ellipse(myX + decimal,myY+100,15,15);
  	}
  	if (colornumber == 2) {
  		fill(40,84,174);
  		ellipse(myX + decimal,myY,15,15);
  	}
  	if (colornumber == 3) {
  		fill(255,255,255);
  		ellipse(myX + decimal,myY-100,15,15);
  	}
    
  }
 }    