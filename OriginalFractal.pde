int r = 0;
int g = 0;
int b = 0;
public void setup()
{
  size(500,500);
}
public void draw()
{
	background(0);
	/*if(keyPressed == true && key == ' ')
	{
		noStroke();
		fill(0);
		rect(0,0,500,500);	
	}*/
	if(keyPressed == true && key == 'd')
	{
		myFractal1(125,125,200,200);
	}
	/*else if(keyPressed == true && key == 'a')
	{
		myFractal2(125,125,200,200);
	}*/
	else if(keyPressed == true && key == 'w')
	{
		myFractal3(250,250,400,400);
	}
	/*else if(keyPressed == true && key == 's')
	{
		myFractal4(250,250,400,400);
	}*/
}
public void mouseMoved()
{
  r=(int)mouseX;
  g=(int)mouseY;
  b=(int)(mouseX/2-mouseY/2);
}
public void myFractal1(float x,float y,float siz1,float siz2)
{
	fill(r,g,b);
	rect(x,y,siz1,siz2);
	if(siz1 > 10 && siz2 > 10)
	{
		myFractal1(x*.75,y*.75,siz1/1.25,siz2/1.25);
	}
}
public void myFractal2(float x,float y,float siz1,float siz2)
{
	fill(r,g,b);
	rect(x,y,siz1,siz2);
	if(siz1 > 10 && siz2 > 10)
	{
		myFractal2(x*-.75,y*-.75,siz1/1.25,siz2/1.25);
	}
}
public void myFractal3(float x,float y,float siz1,float siz2)
{
	fill(r,g,b);
	ellipse(x,y,siz1,siz2);
	if(siz1 > 10 && siz2 > 10)
	{
		myFractal3((int)x*.75,(int)y*.75,(int)siz1/1.25,(int)siz2/1.25);
	}
}
public void myFractal4(float x,float y,float siz1,float siz2)
{
	fill(r,g,b);
	ellipse(x,y,siz1,siz2);
	if(siz1 > 10 && siz2 > 10)
	{
		myFractal4((int)x*-.75,(int)y*-.75,(int)siz1/1.25,(int)siz2/1.25);		
	}
}