class Flower {
  
 // Variables
 
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
 int petalColor;//hexadecimal number for the color of petals
 int VelocityX; //Hastighed for hvor hurtigt blomsten bevæger sig på x-aksen
 int VelocityY; //Hastighed for hvor hurtigt blomsten bevæger sig på y-aksen
 
 float ballX;
  float ballY;
 
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor,int temp_VelocityX,int temp_VelocityY) {
  r=temp_r; //Indbyg den givne radius på cirklen
  n_petals = temp_n_petals; //Ret antallet af blomster blade
  x=temp_x; //Ret x til
  y=temp_y; //Ret y til
  petalColor=temp_petalColor; //indsæt farvekoden for blomster bladene givet til constructeren "flower"
  VelocityX=temp_VelocityX;
  VelocityY=temp_VelocityY;
}



void display () {
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) { //Så længe i er mindre end PI*2 så forøg i med 2*PI delt med antallet af blomster blade
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); //tegn midterblomsten //tegn blomster bladene der er forskudt med cos og sin af "i" i forhold til midterblomsten
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2); //tegn midterblomsten som er 0.2 større end bladene
}

void GottaGoFast(){
  x += VelocityX;
  y += VelocityY;
  
   
  }

void Bounce(){
  if (x > width-r || x < r){
    VelocityX = VelocityX * (-1);

  }
  else if (y > height-r || y < r){
    VelocityY = VelocityY * (-1);
}
}


}
