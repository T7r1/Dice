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
//if (num%2==0)
//fill(0,0,255);
    //  fill((float)Math.random()*30+25,(float)Math.random()*50+35,(float)Math.random()*220+35);
//else 
//fill(255,0,0);
   // fill((float)Math.random()*220+35,(float)Math.random()*50+35,(float)Math.random()*30+25);

    //fill((float)Math.random()*200+55,(float)Math.random()*200+55,(float)Math.random()*200+55);
     if (num==1){
                 fill(254,70,70);
    }else if (num==2){
                 fill(254,254,70);

    }else if (num==3){
                fill(254,70,254);

    }else if (num==4){
                 fill(70,254,254);

    }else if (num==5){
                 fill(70,70,254);

    }else{
                 fill(70,254,70);

    } 
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
scale(1.5);
fill(255);
text(jf,360/1.5,745/1.5);  
}
}

 
