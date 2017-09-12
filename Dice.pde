void setup()
{ size(600,600);
	noLoop();
}
void draw()
{
	Die dice=new Die(50,50);
dice.show();
System.out.println(dice.diceNum);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int diceX,diceY,diceNum;
	Die(int x, int y) //constructor
	{
		diceX=x;
    diceY=y;
    roll();
	}
	void roll()
	{
  diceNum=(int)(Math.random()*6)+1;
	}
	void show()
	{
		rect(diceX,diceY,50,50,20);
    if(diceNum==1){
      fill(255);
      ellipse(diceX+25,diceY+25,10,10);
	}
else if(diceNum==2){
   for(int z=0;z<2;z=z+1){
     ellipse(diceX+25,25*z+diceY+12.5,10,10);}}
     else if(diceNum==3){
       for(int z=0;z<3;z=z+1){
     ellipse(diceX+25,50/3*z+diceY+50/5,10,10);}}
}}