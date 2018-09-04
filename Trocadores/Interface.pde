Interface INTERFACE = new Interface();
class Interface {

  String tmp_text="";
  float valor_scroll = 10.0;
  float valor_setas = 0;

  boolean mouse_click = false;
  
  void ScrollPlus() {
    valor_scroll++;
  }
  void ScrollMinus() {
    valor_scroll--;
  }
  void DeletaString() {
    this.tmp_text="";
  }
  String RetornaString() {
    return this.tmp_text;
  }
  float RetornaScroll() {
    return this.valor_scroll;
  }
  void ZeraScroll() {
    this.valor_scroll = 0;
  }
  void VerificaCodigo(String codigo) {
  }

}
void keyPressed() {
  //Geral
  

  //Especifico
  if ((key>='a'&&key<='z')||key==' '||key=='.'||(key>='A'&&key<='Z')||(key>='0'&&key<='9')||key=='ç'||key=='!'||key=='?') {
    INTERFACE.tmp_text += str(key);
    TAREFAS.TarefaLetra(key);
  }
  if (keyCode == DOWN) {
    TAREFAS.TarefaCodigo("DOWN");
  } else if (keyCode == LEFT) {
    TAREFAS.TarefaCodigo("LEFT");
  } else if (keyCode == RIGHT) {
    TAREFAS.TarefaCodigo("RIGHT");
  } else if (keyCode == UP) {
    TAREFAS.TarefaCodigo("UP");
  } else if (keyCode == ENTER) {
    TAREFAS.TarefaCodigo("ENTER");
  } 
  if (key==DELETE) {
    INTERFACE.DeletaString();
  }
  if (key==BACKSPACE) {
    if (INTERFACE.tmp_text.length() > 0) {
      INTERFACE.tmp_text = INTERFACE.tmp_text.substring(0, INTERFACE.tmp_text.length() - 1);
    }
  }
}
void mousePressed() {
  //CATCH REF
}
void mouseDragged() {

 //PROCESSING AND RE-REF
}
void mouseClicked() {

  if (CALCULO.MouseIn(301, 181, 301+958, 181+399)) {
    INTERFACE.mouse_click = true;
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (e>0) {
    println(mouseX+" "+mouseY);
    INTERFACE.ScrollPlus();
  } else {
    INTERFACE.ScrollMinus();
  }
}