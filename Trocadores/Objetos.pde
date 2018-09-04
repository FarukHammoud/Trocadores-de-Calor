class TuboCascaTubo4 {

  float tempo = 0;
  float tempo_inicial = 9999999;
  boolean iniciado = false;

  boolean b_thi = false;
  boolean b_tho = false;
  boolean b_tci = false;
  boolean b_tco = false;


  void Mostrar() {


    if (!iniciado) {
      fill(0, 0, 255);
      rect(390, 250, 500, 250);
      fill(255, 255, 255);
      textSize(20);
      this.tempo = millis();
      if (this.tempo < this.tempo_inicial) {
        this.tempo_inicial = this.tempo;
      }
      this.tempo -= this.tempo_inicial;
      if (this.tempo<300) {
        text("Carregando Animação .", 500, 375);
      } else if (this.tempo<600) {
        text("Carregando Animação ..", 500, 375);
      } else if (this.tempo<1000) {
        text("Carregando Animação ...", 500, 375);
      } else {
        this.iniciado = true;
        this.tempo_inicial = 9999999;
      }
    } else {

      //calculo mouse em cima th's

      //thi
      if (CALCULO.MouseIn(850, 230, 1050, 270)) {
        this.b_thi = true;
      } else {
        this.b_thi = false;
      }
      if (this.b_thi && mousePressed ) {

        TAREFAS.Tarefa("Editar Thi");
      }
      //tho
      if (CALCULO.MouseIn(850, 530, 1050, 570)) {
        this.b_tho = true;
      } else {
        this.b_tho = false;
      }
      if (this.b_tho && mousePressed ) {

        TAREFAS.Tarefa("Editar Tho");
      }
      if (FRAMES.FRAME_cascaTubo4.corrente_invertida) {
        //tci
        if (CALCULO.MouseIn(140, 305, 330, 335)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
        //tco
        if (CALCULO.MouseIn(140, 465, 330, 495)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
      } else {
        //tci
        if (CALCULO.MouseIn(140, 305, 330, 335)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
        //tco
        if (CALCULO.MouseIn(140, 465, 330, 495)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
      }
      // tubo externo
      for (int a = 280; a<= 520; a++) {
        if (FRAMES.FRAME_cascaTubo4.f2_in >= FRAMES.FRAME_cascaTubo4.f2_out) {
          stroke(535-int(a/1.25), 0, 0);
        } else {
          stroke(0, 0, 505-int(a/1.25));
        }
        line(390, a, 890, a);
      }
      fill(100, 100, 100);

      noStroke();
      rect(390, 280, 450, 20);
      rect(390, 500, 450, 21);
      rect(440, 390, 451, 20);
      strokeWeight(3);
      stroke(0, 0, 0);

      for (int a = 440; a<865; a+=100) {
        line(a, 340, a, 390);
        line(a, 410, a, 460);
      }
      for (int a = 490; a<865; a+=100) {
        line(a, 300, a, 350);
        line(a, 460, a, 500);
      }

      line(390, 300, 840, 300);
      line(390, 300, 390, 500);
      line(390, 500, 840, 500);
      line(890, 280, 890, 390);
      line(890, 410, 890, 520);
      line(440, 390, 890, 390);
      line(440, 410, 890, 410);
      line(440, 390, 440, 410);
      line(840, 280, 840, 300);
      line(840, 500, 840, 520);

      //tubo interno
      for (int a = 365; a<= 815; a++) {
        if (FRAMES.FRAME_cascaTubo4.f2_in <= FRAMES.FRAME_cascaTubo4.f2_out) {
          stroke(505-int(a/2), 0, 0);
        } else {
          stroke(0, 0, 505-int(a/2));
        }
        line(a, 310, a, 330);
        line(a, 360, a, 380);
        line(a, 420, a, 440);
        line(a, 470, a, 490);
      }
      fill(100, 100, 100);
      noStroke();
      rect(310, 350, 79, 100);
      stroke(0, 0, 0);
      fill(0, 0, 100);
      arc(815, 345, 70, 70, -PI/2, PI/2);
      arc(815, 455, 70, 70, -PI/2, PI/2);
      fill(0, 0, 322);
      arc(390, 400, 80, 80, PI/2, 3*PI/2);
      fill(255, 0, 0);
      arc(815, 345, 30, 30, -PI/2, PI/2);
      fill(171, 0, 0);
      arc(815, 455, 30, 30, -PI/2, PI/2);
      fill(100, 100, 100);
      arc(390, 400, 40, 40, PI/2, 3*PI/2, CHORD);
      line(365, 310, 815, 310);
      line(365, 330, 815, 330);
      line(390, 380, 815, 380);
      line(390, 360, 815, 360);
      line(390, 420, 815, 420);
      line(390, 440, 815, 440);
      line(365, 490, 815, 490);
      line(365, 470, 815, 470);


      //setas

      strokeWeight(3);
      if (this.b_tho) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }

      line(865, 530, 865, 560);
      line(865, 560, 855, 545);
      line(865, 560, 875, 545);

      textSize(30);
      if (!CALCULO.b_t2_f1&&!CALCULO.c_t2_f1) {
        text("Tho: ?", 885, 560);
      } else {
        text("Tho: "+nfc(CALCULO.t2_f1, 1)+"ºC", 885, 560);
      }

      if (this.b_thi) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }
      line(865, 235, 865, 265);
      line(865, 265, 855, 250);
      line(865, 265, 875, 250);
      if (!CALCULO.b_t1_f1&&!CALCULO.c_t1_f1) {
        text("Thi: ?", 885, 265);
      } else {
        text("Thi: "+nfc(CALCULO.t1_f1, 1)+"ºC", 885, 265);
      }

      if (this.b_tci) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }

      if (FRAMES.FRAME_cascaTubo4.corrente_invertida) {
        line(320, 320, 350, 320);
        line(320, 320, 335, 310);
        line(320, 320, 335, 330);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 140, 330);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 140, 330);
        }
      } else {
        line(320, 320, 350, 320);
        line(350, 320, 335, 310);
        line(350, 320, 335, 330);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 140, 330);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 140, 330);
        }
      }

      if (this.b_tco) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }
      if (FRAMES.FRAME_cascaTubo4.corrente_invertida) {

        line(320, 480, 350, 480);
        line(350, 480, 335, 470);
        line(350, 480, 335, 490);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 140, 490);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 140, 490);
        }
      } else {
        line(320, 480, 350, 480);
        line(320, 480, 335, 470);
        line(320, 480, 335, 490);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 140, 490);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 140, 490);
        }
      }


      strokeWeight(1);
    }
  }
}

class TuboCascaTubo2 {

  float tempo = 0;
  float tempo_inicial = 9999999;
  boolean iniciado = false;

  boolean b_thi = false;
  boolean b_tho = false;
  boolean b_tci = false;
  boolean b_tco = false;


  void Mostrar() {


    if (!iniciado) {
      fill(0, 0, 255);
      rect(390, 250, 500, 250);
      fill(255, 255, 255);
      textSize(20);
      this.tempo = millis();
      if (this.tempo < this.tempo_inicial) {
        this.tempo_inicial = this.tempo;
      }
      this.tempo -= this.tempo_inicial;
      if (this.tempo<300) {
        text("Carregando Animação .", 500, 375);
      } else if (this.tempo<600) {
        text("Carregando Animação ..", 500, 375);
      } else if (this.tempo<1000) {
        text("Carregando Animação ...", 500, 375);
      } else {
        this.iniciado = true;
        this.tempo_inicial = 9999999;
      }
    } else {

      //calculo mouse em cima th's

      //thi
      if (CALCULO.MouseIn(850, 250, 1050, 290)) {
        this.b_thi = true;
      } else {
        this.b_thi = false;
      }
      if (this.b_thi && mousePressed ) {

        TAREFAS.Tarefa("Editar Thi");
      }
      //tho
      if (CALCULO.MouseIn(400, 490, 600, 520)) {
        this.b_tho = true;
      } else {
        this.b_tho = false;
      }
      if (this.b_tho && mousePressed ) {

        TAREFAS.Tarefa("Editar Tho");
      }
      if (FRAMES.FRAME_cascaTubo2.corrente_invertida) {
        //tci
        if (CALCULO.MouseIn(140, 330, 330, 360)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
        //tco
        if (CALCULO.MouseIn(140, 420, 330, 450)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
      } else {
        //tci
        if (CALCULO.MouseIn(140, 330, 330, 360)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
        //tco
        if (CALCULO.MouseIn(140, 420, 330, 450)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
      }
      // tubo externo
      for (int a = 300; a<= 480; a++) {
        if (FRAMES.FRAME_cascaTubo2.f2_in >= FRAMES.FRAME_cascaTubo2.f2_out) {
          stroke(505-int(a/1.25), 0, 0);
        } else {
          stroke(0, 0, 505-int(a/1.25));
        }
        line(390, a, 890, a);
      }
      fill(100, 100, 100);

      noStroke();
      rect(365, 300, 475, 25);
      rect(440, 455, 475, 26);
      strokeWeight(3);
      stroke(0, 0, 0);

      for (int a = 440; a<865; a+=100) {
        line(a, 365, a, 455);
      }
      for (int a = 490; a<865; a+=100) {
        line(a, 325, a, 415);
      }

      line(390, 325, 840, 325);
      line(440, 455, 890, 455);
      line(390, 325, 390, 480);
      line(890, 300, 890, 455);
      line(440, 455, 440, 480);
      line(840, 300, 840, 325);

      //tubo interno
      for (int a = 365; a<= 815; a++) {
        if (FRAMES.FRAME_cascaTubo2.f2_in <= FRAMES.FRAME_cascaTubo2.f2_out) {
          stroke(505-int(a/2), 0, 0);
        } else {
          stroke(0, 0, 505-int(a/2));
        }
        line(a, 335, a, 355);
        line(a, 425, a, 445);
      }
      stroke(0, 0, 0);
      fill(0, 0, 98);
      arc(815, 390, 110, 110, -PI/2, PI/2);
      fill(200, 0, 0);

      //here ***
      noStroke();

      for (float a=0; a<PI/2; a+=0.01) {

        fill(195-int(a*20), 0, 0);
        arc(815, 390, 70, 70, +a, PI-a, OPEN);
      }
      for (float a=0; a<PI/2; a+=0.01) {

        fill(195+int(a*20), 0, 0);
        arc(815, 390, 70, 70, PI+a, (2*PI)-a, OPEN);
      }
      noFill();
      stroke(0, 0, 0);
      arc(815, 390, 70, 70, -PI/2, PI/2);

      line(790, 360, 790, 415);

      line(365, 335, 815, 335);
      line(365, 355, 815, 355);
      line(365, 445, 815, 445);
      line(365, 425, 815, 425);


      //setas

      strokeWeight(3);
      if (this.b_tho) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }

      line(415, 490, 415, 520);
      line(415, 520, 405, 505);
      line(415, 520, 425, 505);

      textSize(30);
      if (!CALCULO.b_t2_f1&&!CALCULO.c_t2_f1) {
        text("Tho: ?", 435, 520);
      } else {
        text("Tho: "+nfc(CALCULO.t2_f1, 1)+"ºC", 435, 520);
      }

      if (this.b_thi) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }
      line(865, 255, 865, 285);
      line(865, 285, 855, 270);
      line(865, 285, 875, 270);
      if (!CALCULO.b_t1_f1&&!CALCULO.c_t1_f1) {
        text("Thi: ?", 885, 285);
      } else {
        text("Thi: "+nfc(CALCULO.t1_f1, 1)+"ºC", 885, 285);
      }

      if (this.b_tci) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }

      if (FRAMES.FRAME_cascaTubo2.corrente_invertida) {
        line(320, 345, 350, 345);
        line(320, 345, 335, 335);
        line(320, 345, 335, 355);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 140, 355);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 140, 355);
        }
      } else {
        line(320, 345, 350, 345);
        line(350, 345, 335, 335);
        line(350, 345, 335, 355);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 140, 355);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 140, 355);
        }
      }

      if (this.b_tco) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }
      if (FRAMES.FRAME_cascaTubo2.corrente_invertida) {

        line(320, 435, 350, 435);
        line(350, 435, 335, 425);
        line(350, 435, 335, 445);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 140, 445);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 140, 445);
        }
      } else {
        line(320, 435, 350, 435);
        line(320, 435, 335, 425);
        line(320, 435, 335, 445);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 140, 445);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 140, 445);
        }
      }


      strokeWeight(1);
    }
  }
}

class TuboConcentrico {

  float tempo = 0;
  float tempo_inicial = 9999999;
  boolean iniciado = false;

  boolean b_thi = false;
  boolean b_tho = false;
  boolean b_tci = false;
  boolean b_tco = false;


  void Mostrar() {


    if (!iniciado) {
      fill(0, 0, 255);
      rect(390, 250, 500, 250);
      fill(255, 255, 255);
      textSize(20);
      this.tempo = millis();
      if (this.tempo < this.tempo_inicial) {
        this.tempo_inicial = this.tempo;
      }
      this.tempo -= this.tempo_inicial;
      if (this.tempo<300) {
        text("Carregando Animação .", 500, 375);
      } else if (this.tempo<600) {
        text("Carregando Animação ..", 500, 375);
      } else if (this.tempo<1000) {
        text("Carregando Animação ...", 500, 375);
      } else {
        this.iniciado = true;
        this.tempo_inicial = 9999999;
      }
    } else {

      //calculo mouse em cima th's

      //thi
      if (CALCULO.MouseIn(850, 250, 1050, 290)) {
        this.b_thi = true;
      } else {
        this.b_thi = false;
      }
      if (this.b_thi && mousePressed ) {

        TAREFAS.Tarefa("Editar Thi");
      }
      //tho
      if (CALCULO.MouseIn(400, 460, 600, 490)) {
        this.b_tho = true;
      } else {
        this.b_tho = false;
      }
      if (this.b_tho && mousePressed ) {

        TAREFAS.Tarefa("Editar Tho");
      }
      //tci
      if (FRAMES.FRAME_concentrico.corrente_invertida) {
        if (CALCULO.MouseIn(140, 360, 320, 390)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
        //tco
        if (CALCULO.MouseIn(930, 360, 1150, 390)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
      } else {
        if (CALCULO.MouseIn(150, 360, 330, 390)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
        //tco
        if (CALCULO.MouseIn(930, 360, 1150, 390)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
      }
      // tubo externo
      for (int a = 300; a<= 450; a++) {
        if (FRAMES.FRAME_concentrico.f2_in >= FRAMES.FRAME_concentrico.f2_out) {
          stroke(505-int(a/1.25), 0, 0);
        } else {
          stroke(0, 0, 505-int(a/1.25));
        }
        line(390, a, 890, a);
      }
      fill(100, 100, 100);
      stroke(0, 0, 0);
      strokeWeight(3);
      line(390, 450, 390, 325);
      line(390, 325, 837, 325);///
      line(840, 325, 840, 300);//
      line(890, 300, 890, 425);
      line(890, 425, 443, 425);///
      line(440, 425, 440, 450);//
      noStroke();
      rect(442, 427, 450, 25);
      rect(389, 299, 450, 25);

      //tubo interno
      for (int a = 365; a<= 915; a++) {
        if (FRAMES.FRAME_concentrico.f2_in <= FRAMES.FRAME_concentrico.f2_out) {
          stroke(505-int(a/2.25), 0, 0);
        } else {
          stroke(0, 0, 505-int(a/2.25));
        }
        line(a, 350, a, 400);
      }
      stroke(0, 0, 0);
      line(365, 350, 915, 350);
      line(365, 400, 915, 400);
      strokeWeight(1);

      //setas

      strokeWeight(3);
      if (this.b_tho) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }

      line(415, 460, 415, 490);
      line(415, 490, 405, 475);
      line(415, 490, 425, 475);

      textSize(30);
      if (!CALCULO.b_t2_f1&&!CALCULO.c_t2_f1) {
        text("Tho: ?", 435, 490);
      } else {
        text("Tho: "+nfc(CALCULO.t2_f1, 1)+"ºC", 435, 490);
      }

      if (this.b_thi) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }
      line(865, 255, 865, 285);
      line(865, 285, 855, 270);
      line(865, 285, 875, 270);
      if (!CALCULO.b_t1_f1&&!CALCULO.c_t1_f1) {
        text("Thi: ?", 885, 285);
      } else {
        text("Thi: "+nfc(CALCULO.t1_f1, 1)+"ºC", 885, 285);
      }

      if (this.b_tci) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }

      if (FRAMES.FRAME_concentrico.corrente_invertida) {
        line(320, 375, 350, 375);
        line(320, 375, 335, 365);
        line(320, 375, 335, 385);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 140, 385);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 140, 385);
        }
      } else {
        line(320, 375, 350, 375);
        line(350, 375, 335, 365);
        line(350, 375, 335, 385);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 150, 385);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 150, 385);
        }
      }

      if (this.b_tco) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }
      if (FRAMES.FRAME_concentrico.corrente_invertida) {
        line(930, 375, 960, 375);
        line(930, 375, 945, 365);
        line(930, 375, 945, 385);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 970, 385);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 970, 385);
        }
      } else {
        line(930, 375, 960, 375);
        line(960, 375, 945, 365);
        line(960, 375, 945, 385);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 970, 385);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 970, 385);
        }
      }


      strokeWeight(1);
    }
  }
}

class Mostrador {

  String linha_1 = "O Programa está bugado, Favor chamar algum reponsavel.";
  String linha_2 = "Bem legal, né?";
  String linha_3 = "CopyRight UTFPR - CT / LACIT - 2015 ";

  void Mostrar() {

    if (FRAMES.EstadoFrame(1)) {
      if (FRAMES.FRAME_concentrico.lista.Texto() == "GERAL1") {
        linha_1 = "Coeficiente global de transferência de calor: ";
        if (CALCULO.b_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K";
        } else if (CALCULO.c_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Diferença média logarítmica de temperatura: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t1_f2&&CALCULO.b_t2_f1&&CALCULO.b_t2_f2) {
          if (!CALCULO.corrente_invertida) {
            linha_2 += nfc(((CALCULO.t1_f1 - CALCULO.t2_f2)-(CALCULO.t2_f1 - CALCULO.t1_f2))/log((CALCULO.t1_f1 - CALCULO.t2_f2)/( CALCULO.t2_f1 - CALCULO.t1_f2)), 2);
          } else {
            linha_2 += nfc(((CALCULO.t1_f1 - CALCULO.t1_f2)-(CALCULO.t2_f1 - CALCULO.t2_f2))/log((CALCULO.t1_f1 - CALCULO.t1_f2)/( CALCULO.t2_f1 - CALCULO.t2_f2)), 2);
          }
          linha_2 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {// mudar
          if (!CALCULO.corrente_invertida) {
            linha_2 += nfc(((CALCULO.t1_f1 - CALCULO.t2_f2)-(CALCULO.t2_f1 - CALCULO.t1_f2))/log((CALCULO.t1_f1 - CALCULO.t2_f2)/( CALCULO.t2_f1 - CALCULO.t1_f2)), 2);
          } else {
            linha_2 += nfc(((CALCULO.t1_f1 - CALCULO.t1_f2)-(CALCULO.t2_f1 - CALCULO.t2_f2))/log((CALCULO.t1_f1 - CALCULO.t1_f2)/( CALCULO.t2_f1 - CALCULO.t2_f2)), 2);
          }
          linha_2 += " K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Coeficiente de filme interno: ";
        if (CALCULO.b_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      }
      if (FRAMES.FRAME_concentrico.lista.Texto() == "GERAL2") {
        linha_1 = "Área do Trocador: ";
        if (CALCULO.b_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2";
        } else if (CALCULO.c_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2 [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Fator de Correção: ";

        if (CALCULO.b_fator) {
          linha_2 += nfc(CALCULO.fator, 2);
        } else {
          linha_2 += "?" ;
        }

        linha_3 = "Coeficiente de filme externo: ";
        if (CALCULO.b_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_concentrico.lista.Texto() == "FLUÍDO 1") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s";
        } else if (CALCULO.c_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t2_f1) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_concentrico.lista.Texto() == "FLUÍDO 2") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K";
        } else if (CALCULO.c_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f2&&CALCULO.b_t2_f2) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_concentrico.lista.Texto() == "CALCULO") {
        linha_1 = "Taxa de transferência de calor: ";
        if (CALCULO.incalculavel) {
          linha_1 += "?";
        } else if (CALCULO.errado) {
          linha_1 += "duas ou mais formas de calcular que não coincidem" ;
        } else if (CALCULO.proximo) {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W [PR!]";
        } else {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W";
        }
        linha_2 = "";
        linha_3 = "";
        boolean one_time = false;
        if (CALCULO.b_taxa_1) {
          if (one_time) {
            linha_2+=" e Dados do fluído 1";
            linha_3+=" e Q = m1*c1*dT1";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 1";
            linha_3="Fórmula : Q = m1*c1*dT1";
          }
        }
        if (CALCULO.b_taxa_2) {
          if (one_time) {
            linha_2+=" e Dados do fluído 2";
            linha_3+=" e Q = m2*c2*dT2";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 2";
            linha_2="Fórmula : Q = m2*c2*dT2";
          }
        }
        if (CALCULO.b_taxa_3) {
          if (one_time) {
            linha_2+=" e Dados do trocador";
            linha_3+=" e Q=F*U*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador";
            linha_3="Fórmula : Q=F*U*A*dTml";
          }
        }
        if (CALCULO.b_taxa_4) {
          if (one_time) {
            linha_2+=" e Dados do trocador por filme";
            linha_3+=" e Q=F*[(hi*he)/(h1+he)]*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador por filme";
            linha_3="Fórmula : Q=F*[(hi*he)/(h1+he)]*A*dTml";
          }
        }
        if (CALCULO.b_taxa_5) {
          if (one_time) {
            linha_2+=" e Pela taxa fornecida";
            linha_3+=" e Q=Qforn.";
          } else {
            one_time = true;
            linha_2="Calculado por: Pela taxa fornecida";
            linha_3="Fórmula : Q=Qforn.";
          }
        }
      }
    } else if (FRAMES.EstadoFrame(2)) {
      if (FRAMES.FRAME_cascaTubo2.lista.Texto() == "GERAL1") {
        linha_1 = "Coeficiente global de transferência de calor: ";
        if (CALCULO.b_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K";
        } else if (CALCULO.c_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Diferença média logarítmica de temperatura: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t1_f2&&CALCULO.b_t2_f1&&CALCULO.b_t2_f2) {// mudar
          linha_2 += nfc(((CALCULO.t2_f1 - CALCULO.t1_f1)-(CALCULO.t2_f2 - CALCULO.t1_f2))/log((CALCULO.t2_f1 - CALCULO.t1_f1)/( CALCULO.t2_f2 - CALCULO.t1_f2)), 2);
          linha_2 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {// mudar
          linha_2 += nfc(((CALCULO.t2_f1 - CALCULO.t1_f1)-(CALCULO.t2_f2 - CALCULO.t1_f2))/log((CALCULO.t2_f1 - CALCULO.t1_f1)/( CALCULO.t2_f2 - CALCULO.t1_f2)), 2);
          linha_2 += " K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Coeficiente de filme interno: ";
        if (CALCULO.b_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      }
      if (FRAMES.FRAME_cascaTubo2.lista.Texto() == "GERAL2") {
        linha_1 = "Área do Trocador: ";
        if (CALCULO.b_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2";
        } else if (CALCULO.c_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2 [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Fator de Correção: ";

        if (CALCULO.b_fator) {
          linha_2 += nfc(CALCULO.fator, 2);
        } else {
          linha_2 += "?" ;
        }

        linha_3 = "Coeficiente de filme externo: ";
        if (CALCULO.b_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_cascaTubo2.lista.Texto() == "FLUÍDO 1") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s";
        } else if (CALCULO.c_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t2_f1) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_cascaTubo2.lista.Texto() == "FLUÍDO 2") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K";
        } else if (CALCULO.c_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f2&&CALCULO.b_t2_f2) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_cascaTubo2.lista.Texto() == "CALCULO") {
        linha_1 = "Taxa de transferência de calor: ";
        if (CALCULO.incalculavel) {
          linha_1 += "?";
        } else if (CALCULO.errado) {
          linha_1 += "duas ou mais formas de calcular que não coincidem" ;
        } else if (CALCULO.proximo) {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W [PR!]";
        } else {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W";
        }
        linha_2 = "";
        linha_3 = "";
        boolean one_time = false;
        if (CALCULO.b_taxa_1) {
          if (one_time) {
            linha_2+=" e Dados do fluído 1";
            linha_3+=" e Q = m1*c1*dT1";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 1";
            linha_3="Fórmula : Q = m1*c1*dT1";
          }
        }
        if (CALCULO.b_taxa_2) {
          if (one_time) {
            linha_2+=" e Dados do fluído 2";
            linha_3+=" e Q = m2*c2*dT2";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 2";
            linha_2="Fórmula : Q = m2*c2*dT2";
          }
        }
        if (CALCULO.b_taxa_3) {
          if (one_time) {
            linha_2+=" e Dados do trocador";
            linha_3+=" e Q=F*U*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador";
            linha_3="Fórmula : Q=F*U*A*dTml";
          }
        }
        if (CALCULO.b_taxa_4) {
          if (one_time) {
            linha_2+=" e Dados do trocador por filme";
            linha_3+=" e Q=F*[(hi*he)/(h1+he)]*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador por filme";
            linha_3="Fórmula : Q=F*[(hi*he)/(h1+he)]*A*dTml";
          }
        }
        if (CALCULO.b_taxa_5) {
          if (one_time) {
            linha_2+=" e Pela taxa fornecida";
            linha_3+=" e Q=Qforn.";
          } else {
            one_time = true;
            linha_2="Calculado por: Pela taxa fornecida";
            linha_3="Fórmula : Q=Qforn.";
          }
        }
      }
    } else if (FRAMES.EstadoFrame(3)) {
      if (FRAMES.FRAME_cascaTubo4.lista.Texto() == "GERAL1") {
        linha_1 = "Coeficiente global de transferência de calor: ";
        if (CALCULO.b_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K";
        } else if (CALCULO.c_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Diferença média logarítmica de temperatura: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t1_f2&&CALCULO.b_t2_f1&&CALCULO.b_t2_f2) {// mudar
          linha_2 += nfc(((CALCULO.t2_f1 - CALCULO.t1_f1)-(CALCULO.t2_f2 - CALCULO.t1_f2))/log((CALCULO.t2_f1 - CALCULO.t1_f1)/( CALCULO.t2_f2 - CALCULO.t1_f2)), 2);
          linha_2 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {// mudar
          linha_2 += nfc(((CALCULO.t2_f1 - CALCULO.t1_f1)-(CALCULO.t2_f2 - CALCULO.t1_f2))/log((CALCULO.t2_f1 - CALCULO.t1_f1)/( CALCULO.t2_f2 - CALCULO.t1_f2)), 2);
          linha_2 += " K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Coeficiente de filme interno: ";
        if (CALCULO.b_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      }
      if (FRAMES.FRAME_cascaTubo4.lista.Texto() == "GERAL2") {
        linha_1 = "Área do Trocador: ";
        if (CALCULO.b_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2";
        } else if (CALCULO.c_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2 [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Fator de Correção: ";

        if (CALCULO.b_fator) {
          linha_2 += nfc(CALCULO.fator, 2);
        } else {
          linha_2 += "?" ;
        }

        linha_3 = "Coeficiente de filme externo: ";
        if (CALCULO.b_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_cascaTubo4.lista.Texto() == "FLUÍDO 1") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s";
        } else if (CALCULO.c_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t2_f1) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_cascaTubo4.lista.Texto() == "FLUÍDO 2") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K";
        } else if (CALCULO.c_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f2&&CALCULO.b_t2_f2) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_cascaTubo4.lista.Texto() == "CALCULO") {
        linha_1 = "Taxa de transferência de calor: ";
        if (CALCULO.incalculavel) {
          linha_1 += "?";
        } else if (CALCULO.errado) {
          linha_1 += "duas ou mais formas de calcular que não coincidem" ;
        } else if (CALCULO.proximo) {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W [PR!]";
        } else {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W";
        }
        linha_2 = "";
        linha_3 = "";
        boolean one_time = false;
        if (CALCULO.b_taxa_1) {
          if (one_time) {
            linha_2+=" e Dados do fluído 1";
            linha_3+=" e Q = m1*c1*dT1";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 1";
            linha_3="Fórmula : Q = m1*c1*dT1";
          }
        }
        if (CALCULO.b_taxa_2) {
          if (one_time) {
            linha_2+=" e Dados do fluído 2";
            linha_3+=" e Q = m2*c2*dT2";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 2";
            linha_2="Fórmula : Q = m2*c2*dT2";
          }
        }
        if (CALCULO.b_taxa_3) {
          if (one_time) {
            linha_2+=" e Dados do trocador";
            linha_3+=" e Q=F*U*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador";
            linha_3="Fórmula : Q=F*U*A*dTml";
          }
        }
        if (CALCULO.b_taxa_4) {
          if (one_time) {
            linha_2+=" e Dados do trocador por filme";
            linha_3+=" e Q=F*[(hi*he)/(h1+he)]*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador por filme";
            linha_3="Fórmula : Q=F*[(hi*he)/(h1+he)]*A*dTml";
          }
        }
        if (CALCULO.b_taxa_5) {
          if (one_time) {
            linha_2+=" e Pela taxa fornecida";
            linha_3+=" e Q=Qforn.";
          } else {
            one_time = true;
            linha_2="Calculado por: Pela taxa fornecida";
            linha_3="Fórmula : Q=Qforn.";
          }
        }
      }
    } else if (FRAMES.EstadoFrame(4)) {
      if (FRAMES.FRAME_condensadorEvaporador.lista.Texto() == "GERAL1") {
        linha_1 = "Coeficiente global de transferência de calor: ";
        if (CALCULO.b_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K";
        } else if (CALCULO.c_coef_global) {
          linha_1 += nfc(CALCULO.coef_global, 2);
          linha_1 += " W/m2.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Diferença média logarítmica de temperatura: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t1_f2&&CALCULO.b_t2_f1&&CALCULO.b_t2_f2) {// mudar
          linha_2 += nfc(((CALCULO.t2_f1 - CALCULO.t1_f1)-(CALCULO.t2_f2 - CALCULO.t1_f2))/log((CALCULO.t2_f1 - CALCULO.t1_f1)/( CALCULO.t2_f2 - CALCULO.t1_f2)), 2);
          linha_2 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {// mudar
          linha_2 += nfc(((CALCULO.t2_f1 - CALCULO.t1_f1)-(CALCULO.t2_f2 - CALCULO.t1_f2))/log((CALCULO.t2_f1 - CALCULO.t1_f1)/( CALCULO.t2_f2 - CALCULO.t1_f2)), 2);
          linha_2 += " K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Coeficiente de filme interno: ";
        if (CALCULO.b_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_i) {
          linha_3 += nfc(CALCULO.coef_film_i, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      }
      if (FRAMES.FRAME_condensadorEvaporador.lista.Texto() == "GERAL2") {
        linha_1 = "Área do Trocador: ";
        if (CALCULO.b_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2";
        } else if (CALCULO.c_area) {
          linha_1 += nfc(CALCULO.area, 2);
          linha_1 += " m2 [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Fator de Correção: ";
        if (CALCULO.b_fator) {
          linha_2 += nfc(CALCULO.fator, 2);
        } else {
          linha_2 += "?" ;
        }

        linha_3 = "Coeficiente de filme externo: ";
        if (CALCULO.b_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K";
        } else if (CALCULO.c_coef_film_e) {
          linha_3 += nfc(CALCULO.coef_film_e, 2);
          linha_3 += " W/m2.K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_condensadorEvaporador.lista.Texto() == "FLUÍDO 1") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s";
        } else if (CALCULO.c_vazmas_1) {
          linha_1 += nfc(CALCULO.vazmas_1, 2);
          linha_1 += " kg/s [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_1) {
          linha_2 += nfc(CALCULO.calesp_1, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f1&&CALCULO.b_t2_f1) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f1||CALCULO.b_t1_f1)&&(CALCULO.c_t2_f1||CALCULO.b_t2_f1)) {
          linha_3 += nfc(CALCULO.t1_f1+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f1+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_condensadorEvaporador.lista.Texto() == "FLUÍDO 2") {
        linha_1 = "Vazão mássica: ";
        if (CALCULO.b_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K";
        } else if (CALCULO.c_vazmas_2) {
          linha_1 += nfc(CALCULO.vazmas_2, 2);
          linha_1 += " J/kg.K [CALCULADO]";
        } else {
          linha_1 += "?" ;
        }
        linha_2 = "Calor específico médio: ";
        if (CALCULO.b_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K";
        } else if (CALCULO.c_calesp_2) {
          linha_2 += nfc(CALCULO.calesp_2, 2);
          linha_2 += " J/kg.K [CALCULADO]";
        } else {
          linha_2 += "?" ;
        }
        linha_3 = "Temperaturas: ";
        if (CALCULO.b_t1_f2&&CALCULO.b_t2_f2) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K";
        } else if ((CALCULO.c_t1_f2||CALCULO.b_t1_f2)&&(CALCULO.c_t2_f2||CALCULO.b_t2_f2)) {
          linha_3 += nfc(CALCULO.t1_f2+273, 2);
          linha_3 += " K >> ";
          linha_3 += nfc(CALCULO.t2_f2+273, 2);
          linha_3 += " K [CALCULADO]";
        } else {
          linha_3 += "?" ;
        }
      } else if (FRAMES.FRAME_condensadorEvaporador.lista.Texto() == "CALCULO") {
        linha_1 = "Taxa de transferência de calor: ";
        if (CALCULO.incalculavel) {
          linha_1 += "?";
        } else if (CALCULO.errado) {
          linha_1 += "duas ou mais formas de calcular que não coincidem" ;
        } else if (CALCULO.proximo) {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W [PR!]";
        } else {
          linha_1 +=nfc(CALCULO.taxa_final, 2);
          linha_1 +=" W";
        }
        linha_2 = "";
        linha_3 = "";
        boolean one_time = false;
        if (CALCULO.b_taxa_1) {
          if (one_time) {
            linha_2+=" e Dados do fluído 1";
            linha_3+=" e Q = m1*c1*dT1";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 1";
            linha_3="Fórmula : Q = m1*c1*dT1";
          }
        }
        if (CALCULO.b_taxa_2) {
          if (one_time) {
            linha_2+=" e Dados do fluído 2";
            linha_3+=" e Q = m2*c2*dT2";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do fluído 2";
            linha_2="Fórmula : Q = m2*c2*dT2";
          }
        }
        if (CALCULO.b_taxa_3) {
          if (one_time) {
            linha_2+=" e Dados do trocador";
            linha_3+=" e Q=F*U*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador";
            linha_3="Fórmula : Q=F*U*A*dTml";
          }
        }
        if (CALCULO.b_taxa_4) {
          if (one_time) {
            linha_2+=" e Dados do trocador por filme";
            linha_3+=" e Q=F*[(hi*he)/(h1+he)]*A*dTml";
          } else {
            one_time = true;
            linha_2="Calculado por: Dados do trocador por filme";
            linha_3="Fórmula : Q=F*[(hi*he)/(h1+he)]*A*dTml";
          }
        }
        if (CALCULO.b_taxa_5) {
          if (one_time) {
            linha_2+=" e Pela taxa fornecida";
            linha_3+=" e Q=Qforn.";
          } else {
            one_time = true;
            linha_2="Calculado por: Pela taxa fornecida";
            linha_3="Fórmula : Q=Qforn.";
          }
        }
      }
    }
    fill(200, 0, 0);
    textSize(20);
    text(this.linha_1, 65, 635);
    text(this.linha_2, 65, 665);
    text(this.linha_3, 65, 695);

    stroke(200, 0, 0);

    CALCULO.PostularMundo();
    if (CALCULO.incalculavel) {

      ellipse(1050, 628, 20, 20);
      text("INCALCULAVEL", 1070, 635);
    } else if (CALCULO.errado) {

      ellipse(1050, 628, 20, 20);
      text("R. ERRADO", 1070, 635);
    } else if (CALCULO.proximo) {

      ellipse(1050, 628, 20, 20);
      text("R. PRÓXIMO", 1070, 635);
    } else {

      noFill();
      ellipse(1050, 628, 20, 20);
      text("R. EXATO", 1070, 635);
    }
  }
}
class BarraDigitacao {

  String template = "Info";
  TextBoxBoolean text_box_tco = new TextBoxBoolean(580, 185); 
  TextBoxBoolean text_box_tci = new TextBoxBoolean(580, 185); 
  TextBoxBoolean text_box_tho = new TextBoxBoolean(580, 185); 
  TextBoxBoolean text_box_thi = new TextBoxBoolean(580, 185); 

  String txt = "";

  BarraDigitacao(String new_txt) {

    this.txt = new_txt;
    this.text_box_tco.MudaSufixo("ºC");
    this.text_box_tco.MudaTXTVazio("Insira Aqui!");
    this.text_box_tci.MudaSufixo("ºC");
    this.text_box_tci.MudaTXTVazio("Insira Aqui!");
    this.text_box_tho.MudaSufixo("ºC");
    this.text_box_tho.MudaTXTVazio("Insira Aqui!");
    this.text_box_thi.MudaSufixo("ºC");
    this.text_box_thi.MudaTXTVazio("Insira Aqui!");
  }
  void InstalaTemplate(String novo_template) {

    this.template = novo_template;
  }
  void Mostrar() {

    //desenho da barra
    stroke(255, 255, 255);
    fill(150, 150, 150);
    rect(340, 180, 600, 40, 20);
    rect(340, 180, 20, 20);
    rect(920, 180, 20, 20);
    noStroke();
    rect(341, 180, 599, 21);
    stroke(255, 255, 255);
    line(340, 180, 940, 180);

    //texto
    if (this.template == "Info") {
      fill(75, 75, 75);
      textSize(30);  
      if (this.txt == "Concentrico") {
        text("Trocador de Tubos Concêntricos", 405, 212);
      } else if (this.txt == "CascaTubo2") {
        text("Trocador de Casca e Tubo de 2 Passes", 365, 212);
      } else if (this.txt == "CascaTubo4") {
        text("Trocador de Casca e Tubo de 4 Passes", 365, 212);
      } else if (this.txt == "CondensadorEvaporador") {
        text("Condensador ou Evaporador", 450, 212);
      }
    }
    if (this.template == "Editar Tco") {
      fill(75, 75, 75);
      textSize(30);  
      text("Insira Tco : ", 405, 212);
      this.text_box_tco.Mostrar();
      if (this.text_box_tco.Valor()) {
        this.text_box_tco.Valor(false);
        this.InstalaTemplate("Info");
        FRAMES.FRAME_ConfigFluido2.temp_2.MudaTexto(str(this.text_box_tco.RetornaFloat()));
        FRAMES.FRAME_ConfigFluido2.temp_2.Valor(true);
      }
    }
    if (this.template == "Editar Tci") {
      fill(75, 75, 75);
      textSize(30);  
      text("Insira Tci :", 405, 212);
      this.text_box_tci.Mostrar();
      if (this.text_box_tci.Valor()) {
        this.text_box_tci.Valor(false);
        this.InstalaTemplate("Info");
        FRAMES.FRAME_ConfigFluido2.temp_1.MudaTexto(str(this.text_box_tci.RetornaFloat()));
        FRAMES.FRAME_ConfigFluido2.temp_1.Valor(true);
      }
    }
    if (this.template == "Editar Tho") {
      fill(75, 75, 75);
      textSize(30);  
      text("Insira Tho :", 405, 212);
      this.text_box_tho.Mostrar();
      if (this.text_box_tho.Valor()) {
        this.text_box_tho.Valor(false);
        this.InstalaTemplate("Info");
        FRAMES.FRAME_ConfigFluido1.temp_2.MudaTexto(str(this.text_box_tho.RetornaFloat()));
        FRAMES.FRAME_ConfigFluido1.temp_2.Valor(true);
      }
    }
    if (this.template == "Editar Thi") {
      fill(75, 75, 75);
      textSize(30);  
      text("Insira Thi :", 405, 212);
      this.text_box_thi.Mostrar();
      if (this.text_box_thi.Valor()) {
        this.text_box_thi.Valor(false);
        this.InstalaTemplate("Info");
        FRAMES.FRAME_ConfigFluido1.temp_1.MudaTexto(str(this.text_box_thi.RetornaFloat()));
        FRAMES.FRAME_ConfigFluido1.temp_1.Valor(true);
      }
    }
  }
}
class TuboCondensadorEvaporador {

  float tempo = 0;
  float tempo_inicial = 9999999;
  boolean iniciado = false;

  boolean b_thi = false;
  boolean b_tho = false;
  boolean b_tci = false;
  boolean b_tco = false;


  void Mostrar() {


    if (!iniciado) {
      fill(0, 0, 255);
      rect(390, 250, 500, 250);
      fill(255, 255, 255);
      textSize(20);
      this.tempo = millis();
      if (this.tempo < this.tempo_inicial) {
        this.tempo_inicial = this.tempo;
      }
      this.tempo -= this.tempo_inicial;
      if (this.tempo<300) {
        text("Carregando Animação .", 500, 375);
      } else if (this.tempo<600) {
        text("Carregando Animação ..", 500, 375);
      } else if (this.tempo<1000) {
        text("Carregando Animação ...", 500, 375);
      } else {
        this.iniciado = true;
        this.tempo_inicial = 9999999;
      }
    } else {

      //calculo mouse em cima th's

      //thi 
      if (CALCULO.MouseIn(850, 260, 1050, 300)) {
        this.b_thi = true;
      } else {
        this.b_thi = false;
      }
      if (this.b_thi && mousePressed ) {

        TAREFAS.Tarefa("Editar Thi");
      }
      //tho
      if (CALCULO.MouseIn(850, 500, 1050, 540)) {
        this.b_tho = true;
      } else {
        this.b_tho = false;
      }
      if (this.b_tho && mousePressed ) {

        TAREFAS.Tarefa("Editar Tho");
      }
      //tci
      if (FRAMES.FRAME_condensadorEvaporador.corrente_invertida) {
        if (CALCULO.MouseIn(210, 265, 400, 295)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
        //tco
        if (CALCULO.MouseIn(210, 505, 400, 535)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
      } else {
        if (CALCULO.MouseIn(210, 265, 400, 295)) {
          this.b_tci = true;
        } else {
          this.b_tci = false;
        }
        if (this.b_tci && mousePressed ) {

          TAREFAS.Tarefa("Editar Tci");
        }
        //tco
        if (CALCULO.MouseIn(210, 505, 400, 535)) {
          this.b_tco = true;
        } else {
          this.b_tco = false;
        }
        if (this.b_tco && mousePressed ) {

          TAREFAS.Tarefa("Editar Tco");
        }
      }


      // desenho

      noStroke();

      for (float a=0; a<PI/2; a+=0.01) {

        fill(100-int(a*100), 0, 0);
        arc(640, 400, 300, 300, +a, PI-a, OPEN);
      }
      for (float a=0; a<PI/2; a+=0.01) {

        fill(100+int(a*100), 0, 0);
        arc(640, 400, 300, 300, PI+a, (2*PI)-a, OPEN);
      }
      for (float a=PI/5; a<PI/2; a+=0.01) {

        fill(0, 150, 255);
        arc(640, 400, 300, 300, +a, PI-a, OPEN);
      }
      for (float x = 520; x<760; x++) {
        stroke(0, 150, 255);
        line(x, 487, x, 475+10*sin((millis())*0.005+x/10));
        stroke(255, 255, 255);
        point(x, 475+10*sin((millis())*0.005+x/10));
        stroke(0, 150, 255);
        line(x, 487, x, 475-6*sin((millis())*0.01+x/10));
        stroke(255, 255, 255);
        point(x, 475-6*sin((millis())*0.01+x/10));
      }
      noFill();
      strokeWeight(3);
      stroke(0, 0, 0);
      ellipse(640, 400, 300, 300);


      for (int a = 260; a< 300; a++) {
        stroke(470-a, 0, 0);  
        line(640, a, 840, a);
      }

      noStroke();
      fill(0, 150, 255);
      rect(640, 500, 200, 40);

      strokeWeight(3);
      stroke(0, 0, 0);

      line(688, 260, 842, 260);
      line(752, 300, 840, 300);
      line(752, 500, 840, 500);
      line(690, 540, 840, 540);


      for (int x = 440; x <560; x++) {

        stroke(0, 0, -100+int(x/2));

        line(x, 270, x, 290);
        line(x, 510, x, 530);
      }
      for (int x = 560; x <660; x++) {

        stroke(0, 0, -100+int(x/2));

        line(x, 270, x, 290);
        line(x, 350, x, 370);
        line(x, 430, x, 450);
        line(x, 510, x, 530);
      }

      strokeWeight(3);
      stroke(0, 0, 0);
      line(440, 270, 660, 270);
      line(440, 290, 660, 290);
      line(560, 350, 660, 350);
      line(560, 370, 660, 370);
      line(560, 430, 660, 430);
      line(560, 450, 660, 450);
      line(440, 510, 660, 510);
      line(440, 530, 660, 530);

      fill(0, 0, 230);
      arc(660, 320, 100, 100, -PI/2, PI/2);
      arc(660, 480, 100, 100, -PI/2, PI/2);

      fill(0, 0, 180);
      arc(560, 400, 100, 100, PI/2, 3*PI/2);

      noStroke();

      for (float a=0; a<PI/2; a+=0.01) {

        fill(155-int(a*20), 0, 0);
        arc(660, 320, 60, 60, +a, PI-a, OPEN);
      }
      for (float a=0; a<PI/2; a+=0.01) {

        fill(155+int(a*20), 0, 0);
        arc(660, 320, 60, 60, PI+a, (2*PI)-a, OPEN);
      }
      noFill();
      stroke(0, 0, 0);
      arc(660, 320, 60, 60, -PI/2, PI/2);
      line(660, 290, 640, 290);
      line(660, 350, 640, 350);
      noStroke();

      for (float a=0; a<PI/2; a+=0.01) {

        fill(100-int(a*15), 0, 0);
        arc(560, 400, 60, 60, +a, PI-a, OPEN);
      }
      for (float a=0; a<PI/2; a+=0.01) {

        fill(100+int(a*15), 0, 0);
        arc(560, 400, 60, 60, PI+a, (2*PI)-a, OPEN);
      }
      noFill();
      stroke(0, 0, 0);
      arc(560, 400, 60, 60, PI/2, 3*PI/2);
      line(560, 370, 580, 370);
      line(560, 430, 580, 430);
      fill(60, 0, 0);
      arc(660, 480, 60, 60, -PI/2, 0);
      fill(0, 150, 255);
      arc(660, 480, 60, 60, 0, PI/2);

      strokeWeight(1);
      if ((10*sin((millis())*0.005+660/10)>(-6*sin((millis())*0.01+660/10)))) {

        noStroke();
        triangle(690, 480, 660, 480, 660, 475+(-6*sin((millis())*0.01+660/10)));
        stroke(255, 255, 255);
        line(660, 475-6*sin((millis())*0.01+660/10), 690, 480);
      } else {
        noStroke();
        triangle(690, 480, 660, 480, 660, 475+(10*sin((millis())*0.005+660/10)));
        stroke(255, 255, 255);
        line(660, 475-6*sin((millis())*0.01+660/10), 690, 480);
        line(660, 475+10*sin((millis())*0.005+660/10), 690, 480);
      }

      //setas
      strokeWeight(3);
      if (this.b_tho) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }

      line(860, 520, 890, 520);
      line(860, 520, 875, 510);
      line(860, 520, 875, 530);

      textSize(30);
      if (!CALCULO.b_t2_f1&&!CALCULO.c_t2_f1) {
        text("Tho: ?", 905, 530);
      } else {
        text("Tho: "+nfc(CALCULO.t2_f1, 1)+"ºC", 905, 530);
      }

      if (this.b_thi) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(100, 0, 0);
        fill(100, 0, 0);
      }

      line(860, 280, 890, 280);
      line(890, 280, 875, 270);
      line(890, 280, 875, 290);

      if (!CALCULO.b_t1_f1&&!CALCULO.c_t1_f1) {
        text("Thi: ?", 905, 290);
      } else {
        text("Thi: "+nfc(CALCULO.t1_f1, 1)+"ºC", 905, 290);
      }

      if (this.b_tci) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }

      if (FRAMES.FRAME_condensadorEvaporador.corrente_invertida) {
        line(390, 280, 420, 280);
        line(390, 280, 405, 270);
        line(390, 280, 405, 290);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 210, 290);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 210, 290);
        }
      } else {
        line(390, 280, 420, 280);
        line(420, 280, 405, 270);
        line(420, 280, 405, 290);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 210, 290);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 210, 290);
        }
      }

      if (this.b_tco) {
        stroke(0, 0, 255);
        fill(0, 0, 255);
      } else {
        stroke(0, 0, 100);
        fill(0, 0, 100);
      }
      if (FRAMES.FRAME_condensadorEvaporador.corrente_invertida) {

        line(390, 520, 420, 520);
        line(420, 520, 405, 510);
        line(420, 520, 405, 530);
        if (!CALCULO.b_t1_f2&&!CALCULO.c_t1_f2) {
          text("Tci: ?", 210, 530);
        } else {
          text("Tci: "+nfc(CALCULO.t1_f2, 1)+"ºC", 210, 530);
        }
      } else {
        line(390, 520, 420, 520);
        line(390, 520, 405, 510);
        line(390, 520, 405, 530);
        if (!CALCULO.b_t2_f2&&!CALCULO.c_t2_f2) {
          text("Tco: ?", 210, 530);
        } else {
          text("Tco: "+nfc(CALCULO.t2_f2, 1)+"ºC", 210, 530);
        }
      }


      strokeWeight(1);
    }
  }
}