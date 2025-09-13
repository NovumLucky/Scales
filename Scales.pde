void setup(){
  size(1200,600);
  background(220,220,200);
}

void draw(){
   for (int y = 1400; y>=0;y-=100) {
    for (int x = 1200;x>=0; x-=200){
      scale(x,y-200);
        System.out.println(x);
        System.out.println(y);
    }
  }
  for (int w = 1400; w >= 0; w -=100){
    for(int z = 1200; z>=0; z -=50){
      counterscale(w,z);
    }
  }
}
 
void scale(int x, int y){
  fill(255,150,0);
  arc(x,y,300,100,radians(-90),radians(90));
}
void counterscale(int w, int z){
    fill(255,150,0);
  arc(w,z,300,100,radians(-90),radians(90));
}
