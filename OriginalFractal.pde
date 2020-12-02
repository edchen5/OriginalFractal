int num = 50;

int col1 = (int)(Math.random() * 155 + 100);
int col2 = (int)(Math.random() * 155 + 100);
int col3 = (int)(Math.random() * 155 + 100);

boolean change = false;

public void setup()
{
	size(600, 600);
	background(0);
	rectMode(CENTER);
}

public void draw()
{
	fill(0, 0, 0, 50);
  	rect(300, 300, 605, 605);

	noFill();
	stroke(col1, col2, col3);
	strokeWeight(0.25);

	if(!change)
		myFractal1(300, 300, 600);
	else 
		myFractal2(300, 300, 600);
	
}

public void mousePressed()
{
	num = (int)(Math.random() * 600 + 5);
	col1 = (int)(Math.random() * 155 + 100);
	col2 = (int)(Math.random() * 155 + 100);
	col3 = (int)(Math.random() * 155 + 100);
}

public void keyPressed()
{
	change = !change;

	col1 = (int)(Math.random() * 155 + 100);
	col2 = (int)(Math.random() * 155 + 100);
	col3 = (int)(Math.random() * 155 + 100);
}

public void myFractal1(int x, int y, int siz)
{
	ellipse(x, y, siz, siz);

	if(siz < num)
		return;

	myFractal1(x + siz / 4, y, siz / 2);
	myFractal1(x - siz / 4, y, siz / 2);
	myFractal1(x, y + siz / 4, siz / 2);
	myFractal1(x, y - siz / 4, siz / 2);
}

public void myFractal2(int x, int y, int siz)
{
	rect(x, y, siz, siz);

	if(siz < num)
		return;

	myFractal2(x + siz / 3, y, siz / 2);
	myFractal2(x - siz / 3, y, siz / 2);
	myFractal2(x, y + siz / 3, siz / 2);
	myFractal2(x, y - siz / 3, siz / 2);
}