import processing.sound.*;

SoundFile soundfile;
int x = 0;
float y = 0;
int a;
int J1;
int J2;
int[] vida1 = new int [7];
int[] vida2 = new int [7];
int[] ataque1 = new int [7];
int[] ataque2 = new int [7];
int turno;
PFont font1;
PImage Inicio;
PImage Historia1;
PImage Historia2;
PImage Cartas;
PImage Enter;
PImage Listos;
PImage Pelea;
PImage Loop;
PImage Dutter;
PImage Milo;
PImage Fungi;
PImage Piber;
PImage Tini;
PImage Nave;
PImage Planet;






void setup() {
  size(500, 500);
  soundfile = new SoundFile(this, "cancion.mp3");
  soundfile.loop();



  Inicio = loadImage ("inicio.png");
  Historia1 = loadImage ("historia1.png");
  Historia2 = loadImage ("historia2.png");
  Cartas = loadImage ("cartas.png");
  Enter = loadImage ("enter.png");
  Listos = loadImage ("listos.png");
  Pelea = loadImage ("pelea.png");
  Loop = loadImage ("loop.png");
  Dutter = loadImage ("dutter.png");
  Milo = loadImage ("milo.png");
  Fungi = loadImage ("fungi.png");
  Piber = loadImage ("piber.png");
  Tini = loadImage ("tini.png");
  Nave = loadImage ("nave.png");
  Planet = loadImage ("planet.png");


  loop = new alien (5, 200);
  dutter = new alien (7, 588);
  fungi = new alien (4, 640);
  milo = new alien (2, 397);
  piber = new alien (9, 701);
  tini = new alien (11, 515);
  nave = new alien (0, 0);
  planet = new alien (0, 0);
  vida1[1] = loop.v;
  vida1[2] = dutter.v;
  vida1[3] = fungi.v;
  vida1[4] = milo.v;
  vida1[5] = piber.v;
  vida1[6] = tini.v;

  vida2[1] = loop.v;
  vida2[2] = dutter.v;
  vida2[3] = fungi.v;
  vida2[4] = milo.v;
  vida2[5] = piber.v;
  vida2[6] = tini.v;

  ataque1[1] = loop.a;
  ataque1[2] = dutter.a;
  ataque1[3] = fungi.a;
  ataque1[4] = milo.a;
  ataque1[5] = piber.a;
  ataque1[6] = tini.a;

  ataque2[1] = loop.a;
  ataque2[2] = dutter.a;
  ataque2[3] = fungi.a;
  ataque2[4] = milo.a;
  ataque2[5] = piber.a;
  ataque2[6] = tini.a;

  font1 = loadFont("Kenzo-Italic-48.vlw");
  textFont(font1, 60);
}




void draw() {
  screens();
  println(a);
}


void keyReleased() {
  if (a <= 2)
    a++;
  if (J1 != 0 && J2 !=0 && a == 3)
  {
    a++; 
    key = 'q';
  }
  if (a >= 4 && a <=5 & key != 'q' )
  {
    a++;
    key = 'q';
  }
  if (a == 6)
  {
    turnos();
  }
  if (a == 6 & vida1[J1] <= 0)
  {
    a++;
  }
  if (a == 6 & vida2[J2] <= 0 && key != 'q')
  {
    a++;
  }
}