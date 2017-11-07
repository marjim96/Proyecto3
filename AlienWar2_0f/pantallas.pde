void screens()
{
  switch (a) {

  case 0:
    screen1();

    break;

  case 1:
    screen2();
    break;


  case 2:
    screen3();
    break;


  case 3: 

    screen4();

    break;


  case 4:
    screen5();
    break;


  case 5:
    screen6();
    break;

  case 6:
    screen7();
    break;

   
  case 7:
    screen10();
    break;
  }
}




void screen1()
{
  background(Inicio);
  pushMatrix();
  scale(.2);
  x= x+5;
  y= y+1.5;
  translate(x, y);

  nave.NAVE();
  popMatrix();
}


void screen2()
{
  background(Historia1);
  scale(0.7);
  translate(100,-260);
  //rotate(PI/2.0);
  planet.PLANET();
}

void screen3() 
{
  background(Historia2);
}

void screen4() 
{
  background(Cartas);

  election();
}

void election()
{
  if (J1 == 0)
  {
    switch (key) 
    {

    case '1':
      J1 = 1;
      key = '9'; 
      break;

    case '2':

      J1 = 2;
      key = '9';
      break;

    case '3':

      J1 = 3;
      key = '9';
      break;

    case '4':
      J1 = 4;
      key = '9';
      break;

    case '5':
      J1 = 5;
      key = '9';
      break;

    case '6':
      J1 = 6;
      key = '9';
      break;
    }  


    textSize(21);
    fill(255);
    text("Jugador 1 elige presionando el numero", 110, 485);
  }



  if (J1 != 0)

  {
    textSize(21);
    fill(#77F022);
    text("Jugador 2 elige presionando el numero", 110, 485);
    switch (key) 
    {
    case '1':
      J2 = 1;
      key = '9';
      break;

    case '2':

      J2 = 2;
      key = '9';
      break;

    case '3':

      J2 = 3;
      key = '9';
      break;

    case '4':
      J2 = 4;
      key = '9';
      break;

    case '5':
      J2 = 5;
      key = '9';
      break;

    case '6':
      J2 = 6;
      key = '9';
      break;
    }
  }
}


void screen5()
{
  background (Enter);
}

void screen6()
{
  background(Listos);
}  

void screen7()
{
  background (Pelea);
  
  fill(#F02241);
  rect(0, 10, vida1[J1], 10);
  
  fill(#F02241);
  rect(250, 10, vida1[J2], 10);

  llamado();
  translate(-250, 120);
  if (vida2[J2] <= 0)
  {
    background(#0A790E);
    fill(255);
    text("Jugador 1 ¡Ganaste!", width/2, 250);
    textAlign(CENTER, CENTER); 
    key = 'q';
  }
  if (vida1[J1] <= 0)
  {
    background(#0A790E);
    fill(255);
    text("Jugador 2 ¡Ganaste!", 250, 250);
    textAlign(CENTER, CENTER);
    key = 'q';
  }
}

void screen8()
{
  background(#0A790E);
  fill(255);
  text("Jugador 1 ¡Ganaste!", width/2, 250);
  textAlign(CENTER, CENTER);
}

void screen9()
{ 
  background(#0A790E);
  fill(255);
  text("Jugador 2 ¡Ganaste!", 250, 250);
  textAlign(CENTER, CENTER);
}

void screen10()
{
  background(#273464);
  fill(255);
  textSize(35);
  text("¿Jugar de nuevo?", 250, 250);
  textAlign(CENTER, CENTER);
  textSize(18);
  text("Presiona ENTER", 250, 350);
  if (key == ENTER);
  {
    a = 0;
  }
}

void llamado()
{
  switch (J1)
  {
  case 1:
    scale(.6);
    translate(-130, -250);
    loop.LOOP();
    break;

  case 2:
    scale(.6);
    translate(-130, -250); 
    milo.MILO();
    break;

  case 3:
    scale(.6);
    translate(-130, -250);
    fungi.FUNGI();
    break;

  case 4:
    scale(.6);
    translate(-130, -250);
    dutter.DUTTER();
    break;

  case 5:
    scale(.6);
    translate(-130, -250);
    piber.PIBER();
    break;

  case 6:
    scale(.6);
    translate(-130, -250);
    tini.TINI();
    break;
  }
  switch (J2)
  {
  case 1:
    translate(550, 0);
    loop.LOOP();
    break;

  case 2:
    translate(550, 0);
    milo.MILO();
    break;

  case 3:
    translate(550, 0);
    fungi.FUNGI();
    break;

  case 4:
    translate(550, 0);
    dutter.DUTTER();
    break;

  case 5:
    translate(550, 0);
    piber.PIBER();
    break;

  case 6:
    translate(550, 0);
    tini.TINI();
    break;
  }

  if (J1 != 0)
  {
    fill(255);
    textSize(30);
    text(vida1[J1], -300, 400);
    text("vida", -370, 400);
    text(ataque1[J1], -300, 450);
    text("atck", -370, 450);
  }

  if (J2 != 0)
  {
    fill(255);
    textSize(30);
    text(vida2[J2], 320, 400);
    text("vida", 250, 400);
    text(ataque2[J2], 320, 450);
    text("atck", 250, 450);
  }
}

void turnos()
{
  if (turno == 0 && key == ENTER)
  {
    turno = 1; 
    vida2[J2] -= ataque1[J1];
    key = 'w';
  }
  if (turno == 1 && key == ENTER)
  {
    turno = 0; 
    vida1[J1] -= ataque1[J2];
    key = 'w';
  }
}