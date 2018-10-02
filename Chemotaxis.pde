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
 		ellipse(myX,myY,20,20);
 	}

 	void move()
 	{
 		myX = myX + (int)(Math.random()*7)-3;
    	myY = myY + (int)(Math.random()*7)-3;
 	}
 }    