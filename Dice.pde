
void setup()
{
	size(900, 900);
	
	
	
	noLoop();
}
void draw()
{
	background(0);
	for(int y = 100; y <= 800; y+=110)
		for(int x = 100; x <= 800; x+=110)
		{
			Die a; 
			a = new Die(x,y);
			a.roll();}

			a.show();
			

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, result;

	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();

	}
	void roll()
	{
		result = (int)(Math.random() * 6) + 1;
		
	}
	void show()
	{
		//your code here
		fill(255, 255, 255);
		rect(myX, myY, 100, 100);
		if(result == 1 || result == 5 || result == 3){
		fill(0,0,0);
		ellipse(myX + 50, myY + 50, 20, 20);
		}
		
			if(result == 2 || result == 3 || result == 4 || result == 5 || result == 6){
				fill(0,0,0);
				ellipse(myX + 25, myY + 25, 20, 20);
				fill(0,0,0);
				ellipse(myX + 75, myY + 25, 20, 20);
			}
			
				if(result == 4 || result == 5 || result == 6){
				fill(0,0,0);
				ellipse(myX + 25, myY + 75, 20, 20);
				fill(0,0,0);
				ellipse(myX + 75, myY + 75, 20, 20);
				}
				
					if(result == 6){
					fill(0,0,0);
					ellipse(myX + 25, myY + 50, 20, 20);
					fill(0,0,0);
					ellipse(myX + 75, myY + 50, 20, 20);
					}
				
			
		
	}
}


