 //declare bacteria variables here
 Bacteria[] ruins;
 Soul frisk;
 void setup()   
 {     
 	noStroke();
 	size(800,800);
 	frisk = new Soul();
 	ruins = new Bacteria[100];
 	for(int i = 0;i<ruins.length;i++)
 	{
 		ruins[i] = new Bacteria((int)(Math.random()*800),0);
 	}
 	

 }   
 void draw()   
 {    
 	
 	
 	background(0);
  	for(int i = 0; i< ruins.length;i++)
  	{
  		frisk.show();
  		frisk.move();
    	ruins[i].show();
    	ruins[i].move();
    	frisk.check();
  	}
  	
  	
 }  
 class Bacteria    
 {     
 	int myX,myY,rando;

 	Bacteria(int x,int y)
 	{
 		myX = x;
 		myY = y;
 		rando = (int)(Math.random()*7)-3;
 	}

 	void show()
 	{
 		fill(255);
 		ellipse(myX,myY,20,17);
 		triangle(myX-10,myY,myX,myY,myX-5,myY-13);
 		triangle(myX-5,myY,myX+5,myY,myX,myY-13);
 		triangle(myX,myY,myX+10,myY,myX+5,myY-13);
 		fill(0);
 		ellipse(myX+(int)(Math.random()*3)-1,myY+(int)(Math.random()*3)-1,5,5);

 	}

 	void move()
 	{
 		myX = myX + (int)(Math.random()*7)-3;
    	myY = myY + (int)(Math.random()*12)-5;
    	if(myY > 800)
    	{
    		myY = 0;
    	}
 	}
 }    
 class Soul
 {
 	float myX,myY;

 	Soul()
 	{
 		myX = 400;
 		myY = 780;
 	}

 	void show()
 	{
 		fill(255,0,0);
 		noStroke();
 		triangle(myX-10,myY,myX+10,myY,myX,myY+10);
 		ellipse(myX-5,myY-5,11,15);
 		ellipse(myX+5,myY-5,11,15);
 		
 	}
 	void move()
 	{
 		if(mouseX > myX)
 		{
 			myX += .02;
 		}
 		if(mouseX < myX)
 		{
 			myX -= .02;
 		}
 		if(mouseY > myY)
 		{
 			myY += .02;
 		}
 		if(mouseY < myY)
 		{
 			myY -= .02;
 		}
 	}

 	void check()
 	{
 		if ((mouseY - 15) == color(255,255,255))
 		{
 			background(255,0,0);
 		}
 	}
 }