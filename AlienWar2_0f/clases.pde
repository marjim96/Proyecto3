alien loop;
alien dutter;
alien fungi;
alien milo;
alien piber;
alien tini;
alien nave;
alien planet;

class alien
{
  int a;
  int v;

  alien (int a_, int v_) {
    a = a_;
    v = v_;
  }

  void LOOP() {
    image(Loop, 20, 450);
  }  

  void DUTTER()
  {  
    image(Dutter, 30, 450);
  }

  void MILO()
  {
    image(Milo, 30, 450);
  }

  void FUNGI()
  {
    image(Fungi, 30, 450);
  }

  void PIBER()
  {
    image(Piber, 30, 450);
  }

  void TINI()
  {
    image(Tini, 30, 450);
  }

  void NAVE()
  {
    image(Nave, 30, 450);
  }

  void PLANET() {
    image(Planet, 30, 450);
  }
}