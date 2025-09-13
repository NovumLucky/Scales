void setup(){
  size(1200,600);
  background(220,220,200);
}

void draw(){
  //color
  //scales
   for (int y = 1400; y>=0;y-=100) {
    for (int x = 1200;x>=0; x-=200){
      drawScale(x,y-200);
    }
  }
  //extra scales that fill the gaps in the canvas
  for (int w = 1400; w >= 0; w -=100){
    for(int z = 1200; z>=0; z -=50){
      counterScale(w,z);
    }
  }
}
void drawScale(int x, int y){
  stroke(0,0,0);
    strokeWeight(2);
  fill(255,(int)(Math.random()*100),20);
  arc(x,y,300,100,radians(-90),radians(90));

}
void counterScale(int w, int z){
 stroke(0,0,0);
  strokeWeight(2);
  fill(255,(int)(Math.random()*100),20);
  arc(w,z,300,100,radians(-90),radians(90));

}



