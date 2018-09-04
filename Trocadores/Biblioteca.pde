
class ListaLateral {

  int x;
  int y;

  String inicial;
  String atual;
  String[] lista = new String[100];
  int nOf_itens=0;
  int n=0;

  boolean mouse_em_cima_1 = false;
  boolean mouse_em_cima_2 = false;
  boolean pressionado_1 = false;
  boolean pressionado_2 = false;

  boolean iniciado = false;

  ListaLateral(int new_x, int new_y) {

    this.x = new_x;
    this.y = new_y;
  }
  void MudaXY(int novo_X, int novo_Y) {

    this.x = novo_X;
    this.y = novo_Y;
  }
  void MudaInicial(String novo_texto) {

    if (iniciado == false) {
      this.inicial = novo_texto;
      for (int a =0; a<this.nOf_itens; a++) {
        if (this.inicial.equals(this.lista[a])) {

          this.n = a;
        }
      }
      iniciado = true;
    }
  }
  void CarregaLista(String listagem) {
    //carregar
    if (listagem == "Geral,Fluido 1,Fluido 2,Calculo") {

      this.nOf_itens = FRAMES.FRAME_concentrico.lista_comum.length;
      for (int a=0; a<FRAMES.FRAME_concentrico.lista_comum.length; a++) {
        this.lista[a] = FRAMES.FRAME_concentrico.lista_comum[a];
      }
    }
  }
  int IndiceN() {

    return this.n;
  }
  String Texto() {

    return this.lista[n];
  }
  void Mostrar() {
    stroke(150, 150, 150);
    if (CALCULO.MouseIn(this.x-10, this.y-18, this.x+10, this.y+2)) {
      this.mouse_em_cima_1 = true;
      fill(200+(mouseX%20), 200+(mouseY%20), 200+((mouseX+mouseY)%20));
    } else {
      this.mouse_em_cima_1 = false;

      fill(255, 255, 255);
    }
    if (mouse_em_cima_1 && mousePressed ) {
      this.pressionado_1 = true;
    } else if (this.pressionado_1) {
      this.n--;
      if (this.n<0) {

        this.n = 0;
      }
      this.pressionado_1 = false;
    }
    ellipse(this.x, this.y-8, 20, 20);
    triangle(this.x-5, this.y-8, this.x+5, this.y-5, this.x+5, this.y-11);
    if (CALCULO.MouseIn(this.x+220, this.y-18, this.x+240, this.y+2)) {
      this.mouse_em_cima_2 = true;
      fill(200+(mouseX%20), 200+(mouseY%20), 200+((mouseX+mouseY)%20));
    } else {
      this.mouse_em_cima_2 = false;

      fill(255, 255, 255);
    }
    if (mouse_em_cima_2 && mousePressed ) {
      this.pressionado_2 = true;
    } else if (this.pressionado_2) {
      this.n++;
      if (this.n>this.nOf_itens-1) {

        this.n = this.nOf_itens-1;
      }
      this.pressionado_2 = false;
    }
    ellipse(this.x+230, this.y-8, 20, 20);
    triangle(this.x+235, this.y-8, this.x+225, this.y-5, this.x+225, this.y-11);
    fill(255, 255, 255);
    rect(this.x+15, this.y-18, 200, 20, 10);
    fill(150, 150, 150);
    textSize(16);
    text(this.lista[this.n], this.x+20, this.y-1);
  }
}
class TextBoxBoolean {

  int x = 0;
  int y = 0;
  boolean checked = false;

  boolean mouse_em_cima=false;
  boolean pressionado=false;

  TextBox text_box = new TextBox(0, 0);

  TextBoxBoolean(int new_x, int new_y) {

    this.x = new_x;
    this.y = new_y;
  }  
  void MudaXY(int novo_X, int novo_Y) {

    this.x = novo_X;
    this.y = novo_Y;
  }
  void MudaSufixo(String novo_sufixo) {

    this.text_box.MudaSufixo(novo_sufixo);
  }
  void MudaTXTVazio(String novo_TXT_vazio) {

    this.text_box.MudaTXTVazio(novo_TXT_vazio);
  }
  void MudaTexto(String novo_texto) {
    this.text_box.MudaTexto(novo_texto);
  }
  boolean Valor() {

    if (this.checked) {

      return true;
    } else {

      return false;
    }
  }
  void Valor(boolean new_b) {

    this.checked = new_b;
  }
  float RetornaFloat() {
    return float(this.text_box.Texto());
  }
  String RetornaString() {
    return this.text_box.Texto();
  }
  void Mostrar() {

    fill(100, 100, 100);
    stroke(0, 0, 0);
    rect(this.x, this.y, 190, 30, 5);
    this.text_box.MudaXY(this.x+10, this.y+5);


    stroke(0, 150, 0);


    this.text_box.Mostrar();
    fill(0, 50, 0);

    if (this.checked) {
      fill(0, 200, 0);
    }
    if (mouseX > this.x+165 && mouseY > this.y+5 && mouseX < this.x+185 && mouseY < this.y+25) {
      this.mouse_em_cima = true;
    } else {
      this.mouse_em_cima = false;
    }
    if (mouse_em_cima && mousePressed ) {
      this.pressionado = true;
    } else if (this.pressionado) {
      if (this.checked) {
        this.checked = false;
      } else {
        this.checked = true;
      }
      this.pressionado = false;
    } 
    stroke(255, 255, 255);
    if (this.mouse_em_cima) {
      stroke(0, 150, 0);
    }

    rect(this.x+165, this.y+5, 20, 20, 3);
    stroke(255, 255, 255);
  }
}
class Botao {

  String tipo;
  int x;
  int y;
  String texto=" ";

  String link_tarefa_a;
  String link_tarefa_b;

  int numero_de_letras;
  boolean mouse_em_cima = false;
  boolean clicado = false;
  boolean pressionado = false;

  Botao(String novo_tipo, int new_x, int new_y, String novo_link_tarefa_a, String novo_link_tarefa_b) {
    this.tipo = novo_tipo;
    this.x = new_x;
    this.y = new_y;
    this.link_tarefa_a = novo_link_tarefa_a;
    this.link_tarefa_b = novo_link_tarefa_b;
  }
  void MudaXY(int novo_X, int novo_Y) {

    this.x = novo_X;
    this.y = novo_Y;
  }
  void MudaTexto(String novo_texto) {

    this.texto = novo_texto;
  }
  boolean Valor() {

    if (this.pressionado) {

      return true;
    } else {

      return false;
    }
  }
  void Mostrar() {


    if (this.tipo == "dinamico") {
      stroke(150, 150, 150);
      if (CALCULO.MouseIn(this.x, this.y-18, this.x+100, this.y+20)) {
        this.mouse_em_cima = true;
        fill(200+(mouseX%20), 200+(mouseY%20), 200+((mouseX+mouseY)%20));
      } else {
        this.mouse_em_cima = false;
        fill(255, 255, 255);
      }
      if (mouse_em_cima && mousePressed ) {
        this.pressionado = true;
      } 
      rect(this.x, this.y-18, 100, 20, 10);
      fill(150, 150, 150);
      textSize(16);
      text(texto, this.x+5, this.y-1);
    }
    if (this.tipo == "inicial") {
      if (mouseX > this.x && mouseY > this.y && mouseX < this.x+400 && mouseY < this.y+200) {
        this.mouse_em_cima = true;
      } else {
        this.mouse_em_cima = false;
      }
      if (mouse_em_cima && mousePressed ) {
        this.pressionado = true;
      } else if (this.pressionado) {
        TAREFAS.Tarefa(this.link_tarefa_b);
        this.pressionado = false;
      } else {
        this.pressionado = false;
      }
      if (this.mouse_em_cima) {
        fill(25, 125, 255);
      } else {
        fill(0, 75, 225);
      }
      stroke(255, 255, 255);
      rect(this.x, this.y, 400, 200, 10); 

      fill(255, 255, 255);
      this.texto = this.link_tarefa_a;
      this.numero_de_letras = this.texto.length();
      textSize(600/this.numero_de_letras);
      text(this.texto, this.x+50, this.y+(50/this.numero_de_letras)+120);
    }
    if (this.tipo == "normal_1") {
      if (mouseX > this.x && mouseY > this.y && mouseX < this.x+60 && mouseY < this.y+60) {
        this.mouse_em_cima = true;
      } else {
        this.mouse_em_cima = false;
      }
      if (mouse_em_cima && mousePressed ) {
        this.pressionado = true;
      } else if (this.pressionado) {
        TAREFAS.Tarefa(this.link_tarefa_b);
        this.pressionado = false;
      } 
      if (this.mouse_em_cima) {
        TAREFAS.Tarefa(this.link_tarefa_a);
      }

      stroke(255, 255, 255);
      fill(50, 50, 50);
      rect(this.x, this.y, 60, 60, 10);
    }
    if (this.tipo == "fechar") {
      if (mouseX > this.x && mouseY > this.y && mouseX < this.x+30 && mouseY < this.y+20) {
        this.mouse_em_cima = true;
        fill(255, 0, 0);
      } else {
        this.mouse_em_cima = false;
        fill(150, 0, 0);
      }
      if (mouse_em_cima && mousePressed ) {
        this.pressionado = true;
      } else if (this.pressionado) {
        TAREFAS.Tarefa(this.link_tarefa_b);
        this.pressionado = false;
      } 
      if (this.mouse_em_cima) {
        TAREFAS.Tarefa(this.link_tarefa_a);
      }

      stroke(255, 255, 255);

      rect(this.x, this.y, 30, 20, 5);
      fill(255, 255, 255);
      textSize(15);
      text("X", this.x+11, this.y+15);
    }
    if (this.tipo == "confirmar") {
      if (mouseX > this.x && mouseY > this.y && mouseX < this.x+120 && mouseY < this.y+30) {
        this.mouse_em_cima = true;
        fill(0, 255, 0);
      } else {
        this.mouse_em_cima = false;
        fill(0, 100, 0);
      }
      if (mouse_em_cima && mousePressed ) {
        this.pressionado = true;
      } else if (this.pressionado) {
        TAREFAS.Tarefa(this.link_tarefa_b);
        this.pressionado = false;
      } 
      if (this.mouse_em_cima) {
        TAREFAS.Tarefa(this.link_tarefa_a);
      }

      stroke(255, 255, 255);

      rect(this.x, this.y, 120, 30, 5);
      fill(255, 255, 255);
      textSize(20);
      text("Confirmar", this.x+10, this.y+25);
    }
    if (this.tipo == "editar") {
      if (mouseX > this.x && mouseY > this.y && mouseX < this.x+80 && mouseY < this.y+30) {
        this.mouse_em_cima = true;
        fill(0, 255, 0);
      } else {
        this.mouse_em_cima = false;
        fill(0, 100, 0);
      }
      if (mouse_em_cima && mousePressed ) {
        this.pressionado = true;
      } else if (this.pressionado) {
        TAREFAS.Tarefa(this.link_tarefa_b);
        this.pressionado = false;
      } 
      if (this.mouse_em_cima) {
        TAREFAS.Tarefa(this.link_tarefa_a);
      }

      stroke(255, 255, 255);

      rect(this.x, this.y, 80, 30, 5);
      fill(255, 255, 255);
      textSize(20);
      text("Editar", this.x+10, this.y+25);
    }
    if (this.tipo == "excluir") {
      if (mouseX > this.x && mouseY > this.y && mouseX < this.x+80 && mouseY < this.y+30) {
        this.mouse_em_cima = true;
        fill(255, 0, 0);
      } else {
        this.mouse_em_cima = false;
        fill(100, 0, 0);
      }
      if (mouse_em_cima && mousePressed ) {
        this.pressionado = true;
      } else if (this.pressionado) {
        TAREFAS.Tarefa(this.link_tarefa_b);
        this.pressionado = false;
      } 
      if (this.mouse_em_cima) {
        TAREFAS.Tarefa(this.link_tarefa_a);
      }

      stroke(255, 255, 255);

      rect(this.x, this.y, 80, 30, 5);
      fill(255, 255, 255);
      textSize(20);
      text("Excluir", this.x+10, this.y+25);
    }
  }
}
class CheckBox {

  int x;
  int y;
  boolean valor=false;
  String texto = "Null";

  boolean mouse_em_cima=false;
  boolean pressionado=false;


  CheckBox(int novo_x, int novo_y, String novo_texto) {
    this.x = novo_x;
    this.y = novo_y;
    this.texto = novo_texto;
  }
  CheckBox(int novo_x, int novo_y, String novo_texto, boolean novo_valor) {
    this.x = novo_x;
    this.y = novo_y;
    this.texto = novo_texto;
    this.valor = novo_valor;
  }
  boolean Valor() {

    return this.valor;
  }
  void MudaTexto(String novo_texto) {
    this.texto = novo_texto;
  }
  void MudaXY(int novo_x, int novo_y) {
    this.x = novo_x;
    this.y = novo_y;
  }
  void Mostrar() {
    fill(255, 255, 255);
    stroke(200, 200, 200);
    rect(this.x, this.y, 10, 10);
    textSize(10);
    fill(0, 0, 0);
    text(this.texto, this.x+20, this.y+10);
    if (this.valor==true) {
      fill(0, 255, 0); 
      ellipse(this.x+5, this.y+5, 4, 4);
    }
    if (mouseX > this.x && mouseY > this.y && mouseX < this.x+10 && mouseY < this.y+10) {
      this.mouse_em_cima = true;
    } else {
      this.mouse_em_cima = false;
    }
    if (mouse_em_cima && mousePressed ) {
      this.pressionado = true;
    } else if (this.pressionado) {
      if (this.valor==true) {
        this.valor = false;
      } else {
        this.valor = true;
      }
      this.pressionado = false;
    } 
    if (this.mouse_em_cima) {
      fill(0, 100, 0); 
      ellipse(this.x+5, this.y+5, 4, 4);
    }
  }
}
class TextBox {

  int x;
  int y;
  String texto = "";
  String sufixo = "";
  String txt_vazio = "";

  boolean habilitado=false;
  boolean mouse_em_cima=false;
  boolean pressionado=false;

  void Limpar() {

    this.texto = "?";
  }
  TextBox(int novo_x, int novo_y) {
    this.x = novo_x;
    this.y = novo_y;
  }

  void MudaTexto(String novo_texto) {

    this.texto = novo_texto;
  }
  void MudaSufixo(String novo_sufixo) {

    this.sufixo = novo_sufixo;
  }
  void MudaTXTVazio(String novo_TXT_vazio) {

    this.txt_vazio = novo_TXT_vazio;
  }
  void MudaXY(int novo_X, int novo_Y) {

    this.x = novo_X;
    this.y = novo_Y;
  }
  String Texto() {

    return this.texto;
  }
  void Mostrar() {
    fill(255, 255, 255);
    stroke(200, 200, 200);
    rect(this.x, this.y, 150, 20);
    textSize(14);
    fill(100, 100, 100);
    if (this.texto == "") {
      text(this.txt_vazio, this.x+10, this.y+17);
    } else {
      text(this.texto+" "+this.sufixo, this.x+10, this.y+17);
    }
    if (mouseX > this.x && mouseY > this.y && mouseX < this.x+150 && mouseY < this.y+20) {
      this.mouse_em_cima = true;
    } else {
      this.mouse_em_cima = false;
      this.habilitado = false;
    }
    if (mouse_em_cima && mousePressed ) {
      this.pressionado = true;
    } else if (this.pressionado) {
      this.pressionado = false;

      this.habilitado = true;

      this.texto = "";
      INTERFACE.DeletaString();
    } 
    if (this.habilitado) {
      this.texto = INTERFACE.RetornaString();
    }
    if (this.mouse_em_cima) {
      fill(255, 255, 255);
      stroke(0, 200, 0);
      rect(this.x, this.y, 150, 20);
      textSize(14);
      fill(0, 0, 0);
      if (this.texto!="") {
        text(this.texto+" "+this.sufixo, this.x+10, this.y+17);
      } else if (this.habilitado) {
        if ((millis()/500)%2 == 0) {
          text("_", this.x+10, this.y+17);
        }
      }
    }
  }
}