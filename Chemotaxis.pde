 //declare bacteria variables here
 Bacteria[] ruins;
 void setup()   
 {     
 	noStroke();
 	size(800,800);
 	ruins = new Bacteria[100];
 	for(int i = 0;i<ruins.length;i++)
 	{
 		ruins[i] = new Bacteria(400,400);
 	}
 }   
 void draw()   
 {    
 	background(0);
  	for(int i = 0; i< ruins.length;i++)
  	{
    	ruins[i].show();
    	ruins[i].move();
  	}
  	Soul frisk = new Soul();
  	frisk.show();
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
    	myY = myY + (int)(Math.random()*7)-3;
 	}
 }    
 class Soul
 {
 	int myX,myY;

 	Soul()
 	{
 		myX = 400;
 		myY = 780;
 	}

 	void show()
 	{
 		fill(255,0,0);
 		triangle(myX-10,myY,myX+10,myY,myX,myY+10);
 	}
 }