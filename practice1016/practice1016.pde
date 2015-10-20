PImage m;
PImage s;
PImage p;
PImage bg;
PImage bird;
PImage win;
int count;
int c;
void setup(){
  size(640,480);
  m = loadImage("img/monster.png");
  bird = loadImage("img/bird.png");
  p = loadImage("img/pokeball.png");
  s = loadImage("img/start.png");
  win = loadImage("img/win.jpg");
  bg = loadImage("img/bg.jpg");
  //image(bg,0,0);
  //print(count);
  //frameRate(1);
  background(bg);  
}

int mox ;
int moy ;
float bx ;

float by; 
int rx = floor(random(480));

int ry = floor(random(320));

void draw(){
  background(bg);
  frameRate(60);
  //float ry = random(100);
  //background(0);
  //if(mouseButton != true){
  
   if(count%180==0){
   background(bg);  
   int mx = 100+floor(random(400));
   int my = floor(random(320));
   image(m,mx,my);
  }
  bx -= floor(random(5,15));
  by += floor(random(5,-15));

  image(bird,0+bx,by);
   if(bx<=0 || by>=320){
    bx = random(400);
    by = random(320);
   }
  if(mousePressed){
  image(p,pmouseX-30,pmouseY-30);
  }
  /*if(mx<= mox && mox<=(100+mx)){
    if(my<=moy && moy<=(100+my)){
      image(m,0,0);
    }
  }*/
  /*}else{
  image(s,0,0);
  }*/
  
  count++;
}

/*void mousePressed(){

mouseX = mox;
mouseY = moy;

}*/