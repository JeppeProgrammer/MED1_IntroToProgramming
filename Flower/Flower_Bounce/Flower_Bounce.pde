Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;
float _x;
float _y;
int _r1;
int _pc;

void setup() {
  size(1200,800);
  background(#43AF76);
  
  _r1= 60; //Den bestemte radius for blomster delene
  int _petals=7; //antallet af blade
  _x=width/2; //sæt x-koordinaten, i dette tilfælde til midten af bredden
  _y=height/2; //sæt y-koordinaten, i dette tilfælde til midten af højden
  _pc=#FFA000; //pc = Petal Color -_-' sæt farven på bladene
  myFlower1 = new Flower(_r1,_petals,_x,_y,_pc,5,5);
  myFlower2 = new Flower(_r1,_petals+2,_x+random(-100,100),_y+70,_pc,3,5);
  myFlower3 = new Flower(_r1,_petals-1,_x+50,_y-50,_pc,2,3);

}

void draw(){
  background(#43AF76);
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  myFlower1.GottaGoFast();
  myFlower2.GottaGoFast();
  myFlower3.GottaGoFast();
  myFlower1.Bounce();
  myFlower2.Bounce();
  myFlower3.Bounce();
  if ((dist(_x, _y, _x, _y)> _r1)){
   _pc +=_r1;
  }
}
