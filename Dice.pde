dIE lll;
void setup()
{
  size(720, 790);
    lll=new dIE(20,20);

  textAlign(CENTER,CENTER);
  noLoop();
}
void draw()
{
  lll.flip();
   
   lll.show();
}
void mousePressed()
{
  redraw();
}
class dIE
{
  //three member variables
  int num; 
  int myX, myY;

  //three member functions
  dIE(int x, int y) //constructor
  {
    num=(int)(Math.random()*6)+1;
 myX=x;
    myY=y;  }
  void flip()
  {
    num=(int)(Math.random()*6)+1;
  //   System.out.println(num);
  }
  
  void show()
  {
    background(150,50,55);
    int toatl=0;
    int h=myX;
    int j=myY;
      for (int u = 0; u < 10; u++){
        myY=myY+(70*u);

     for (int i = 0; i < 10; i++){
               myX=myX+(70*i);

    flip();
    toatl+=num;
   // fill((float)Math.random()*127+90,(float)Math.random()*127+90,(float)Math.random()*127+90);
    fill((float)Math.random()*200+55,(float)Math.random()*200+55,(float)Math.random()*200+55);
    rect(myX,myY,50,50);
    fill(0);
    if (num==1){
    ellipse(myX+25,myY+25,5,5);
    }else if (num==2){
          ellipse(myX+20,myY+25,5,5);
          ellipse(myX+30,myY+25,5,5);

    }else if (num==3){
          ellipse(myX+25,myY+20,5,5);
          ellipse(myX+30,myY+30,5,5);
          ellipse(myX+20,myY+30,5,5);
    }else if (num==4){
          ellipse(myX+20,myY+20,5,5);
          ellipse(myX+30,myY+20,5,5);
          ellipse(myX+30,myY+30,5,5);
          ellipse(myX+20,myY+30,5,5);
    }else if (num==5){
          ellipse(myX+15,myY+15,5,5);
          ellipse(myX+35,myY+15,5,5);
          ellipse(myX+25,myY+25,5,5);
          ellipse(myX+35,myY+35,5,5);
          ellipse(myX+15,myY+35,5,5);
    }else{
          ellipse(myX+20,myY+15,5,5);
          ellipse(myX+30,myY+15,5,5);
          ellipse(myX+20,myY+25,5,5);
          ellipse(myX+30,myY+25,5,5);
          ellipse(myX+20,myY+35,5,5);
          ellipse(myX+30,myY+35,5,5);
    }
                myX=h;

        //System.out.println(myX);

    //java code
  }
//System.out.println(myY);
myY=j;
}
String jf="Total: "+toatl;
text(jf,360,745);  
}
}

 
