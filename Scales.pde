void setup(){
  size(1200,600);
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
strokeWeight(4);
drawFish();
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
//FEESH
void drawFish() {
  noFill();
 beginShape();
  vertex(300, 300);                              // nose
  bezierVertex(600, 150, 900, 150, 1000, 300);   // top curve
  bezierVertex(900, 450, 600, 450, 300, 300);    // bottom curve back to nose
  endShape();

  // Tail attached at right end
  triangle(1000, 300, 1060, 240, 1060, 360);

  // Eye
  fill(0,0,0);
  ellipse(420, 260, 20, 20);
}






