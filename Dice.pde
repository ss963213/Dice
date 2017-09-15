void setup()
{ size(630,630);
	noLoop();
}
int z=0;
void draw()
{background(155);
z=0;
  for(int x=50;x<550;x=x+60){
    for(int y=50;y<550;y=y+60){
	Die dice=new Die(x, y);
dice.show();
z=z+dice.diceNum;
}
}
fill(0);
text("Total Value: "+z,50,600);
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
	{fill(255);
		rect(diceX,diceY,50,50,20);
fill(0);
    if(diceNum==1){
      fill(255,0,0);
      ellipse(diceX+25,diceY+25,10,10);
	}
else if(diceNum==2){
   for(int z=0;z<2;z=z+1){
     ellipse(diceX+15+20*z,20*z+diceY+15,10,10);}}
     else if(diceNum==3){
       for(int z=0;z<3;z=z+1){
     ellipse(diceX+15+10*z,10*z+diceY+15,10,10);}}
     else if(diceNum==4){
       for(int z=0;z<2;z=z+1){
         for(int r=0;r<2;r=r+1){
       ellipse(diceX+15+20*z,diceY+15+20*r,10,10);
         }}}
     else if(diceNum==5){
          for(int z=0;z<3;z=z+1){
     ellipse(diceX+15+10*z,10*z+diceY+15,10,10);
     ellipse(diceX+35-10*z,10*z+diceY+15,10,10);
          }}
     else {
       for (int z=0;z<2;z=z+1){
        for(int r=0;r<3;r=r+1){
          ellipse(diceX+15+20*z,diceY+12+12*r,10,10);
        }
       }
     }
}}