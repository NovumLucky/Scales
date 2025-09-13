void setup(){
  size(1200,600);
  background(220,220,200);
}

void draw(){
  //color
      fill(255,(int)(Math.random()*100),20);
  //scales
   for (int y = 1400; y>=0;y-=100) {
    for (int x = 1200;x>=0; x-=200){
      scale(x,y-200);
      //where exactly are my scales?
        System.out.println(x);
        System.out.println(y);
    }
  }
  //extra scales that fill the gaps in the canvas
  for (int w = 1400; w >= 0; w -=100){
    for(int z = 1200; z>=0; z -=50){
      counterscale(w,z);
    }
  }
  strokeWeight(4);
  if (value == 0)
   drawFish();
}
void scale(int x, int y){
    strokeWeight(2);
  arc(x,y,300,100,radians(-90),radians(90));

}
void counterscale(int w, int z){
  strokeWeight(2);
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
//mouse click function
int value = 1;
void mouseClicked() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
