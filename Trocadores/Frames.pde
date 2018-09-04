Frames FRAMES = new Frames();

class Frames {

  //Vetor de Controle
  boolean[] frame = new boolean[20];

  //Declaração de Frames

  Frame_Inicial FRAME_inicial = new Frame_Inicial();
  Frame_Concentrico FRAME_concentrico = new Frame_Concentrico();
  Frame_CascaTubo2 FRAME_cascaTubo2 = new Frame_CascaTubo2();
  Frame_CascaTubo4 FRAME_cascaTubo4 = new Frame_CascaTubo4();
  Frame_CondensadorEvaporador FRAME_condensadorEvaporador = new Frame_CondensadorEvaporador();
  Frame_ConfigFluido1 FRAME_ConfigFluido1 = new Frame_ConfigFluido1();
  Frame_ConfigFluido2 FRAME_ConfigFluido2 = new Frame_ConfigFluido2();
  Frame_ConfigFluido1_C FRAME_ConfigFluido1_C = new Frame_ConfigFluido1_C();
  Frame_ConfigFluido2_C FRAME_ConfigFluido2_C = new Frame_ConfigFluido2_C();
  Frame_Configuracoes FRAME_Configuracoes = new Frame_Configuracoes();
  Frame_Grafico FRAME_Grafico = new Frame_Grafico();

  //Inicialização
  Frames() {

    for (int a = 0; a<this.frame.length; a++) {
      this.frame[a] = false;
    }
  }
  void AtivaFrame(int numero) {

    this.frame[numero] = true;
  }
  void DesativaFrame(int numero) {

    this.frame[numero] = false;
  }
  boolean EstadoFrame(int numero) {

    return this.frame[numero];
  }
  //Função Visualização
  void Mostrar() {

    if (this.frame[0]) {
      this.FRAME_inicial.Mostrar();
    }
    if (this.frame[1]) {
      this.FRAME_concentrico.Mostrar();
    } 
    if (this.frame[2]) {
      this.FRAME_cascaTubo2.Mostrar();
    } 
    if (this.frame[3]) {
      this.FRAME_cascaTubo4.Mostrar();
    } 
    if (this.frame[4]) {
      this.FRAME_condensadorEvaporador.Mostrar();
    }
    if (this.frame[5]) {
      this.FRAME_ConfigFluido1.Mostrar();
    }
    if (this.frame[6]) {
      this.FRAME_ConfigFluido2.Mostrar();
    }
    if (this.frame[7]) {
      this.FRAME_Configuracoes.Mostrar();
    }
    if (this.frame[8]) {
      this.FRAME_Grafico.Mostrar();
    }
    if (this.frame[9]) {
      this.FRAME_ConfigFluido1_C.Mostrar();
    }
    if (this.frame[10]) {
      this.FRAME_ConfigFluido2_C.Mostrar();
    }
  }
}

//Frames do Programa
class Frame_Inicial {
  //Objetos do Frame
  Botao bot_in_1 = new Botao("inicial", 200, 260, "Tubos Côncentricos", "Ativa Frame Concentrico");
  Botao bot_in_2 = new Botao("inicial", 680, 260, "Casca e Tubo 2 Passes", "Ativa Frame CascaTubo2");
  Botao bot_in_3 = new Botao("inicial", 200, 490, "Casca e Tubo 4 Passes", "Ativa Frame CascaTubo4");
  Botao bot_in_4 = new Botao("inicial", 680, 490, "Condensador ou Evaporador", "Ativa Frame CondensadorEvaporador");
  //Variaveis Gerais
  boolean mostrar_opcoes = false;
  //Funções do Frame

  //Visualização
  void Mostrar() {
    image(fundo, 0, 0, 1280, 720);
    fill(255, 0, 0);
    stroke(255, 255, 255);
    ellipse(20, 20, 10, 10);
    fill(0, 100, 250);
    rect(50, 20, 1180, 150);

    fill(255, 255, 255);
    textSize(20);
    stroke(255, 255, 255);
    text("Simulador Didático", 55, 40);
    fill(255, 0, 0); 
    textSize(80);
    text("Trocadores de Calor", 80, 130);
    image(lacit, 940, 40, 200, 120);

    if (this.mostrar_opcoes) {
      textSize(30);
      fill(200, 200, 200);
      text("1. Selecione o Tipo de Trocador", 100, 220);

      bot_in_1.Mostrar();
      bot_in_2.Mostrar();
      bot_in_3.Mostrar();
      bot_in_4.Mostrar();
    } else {

      fill(255, 255, 255);
      textSize(30);
      text("- Pressione \"ESPAÇO\" para Iniciar o Simulador -", 280, 420);
    }
  }
}
class Frame_Concentrico {
  //Objetos do Frame
  Mostrador tela = new Mostrador();
  BarraDigitacao barra = new BarraDigitacao("Concentrico");
  Botao bot_fluido_1 = new Botao("normal_1", 60, 200, "TextIn: Clique para Alterar o Fluído Quente", "Ativa Frame ConfigFluido1");
  Botao bot_fluido_2 = new Botao("normal_1", 60, 280, "TextIn: Clique para Alterar o Fluído Frio", "Ativa Frame ConfigFluido2");
  Botao bot_config = new Botao("normal_1", 60, 360, "TextIn: Clique para Alterar as Configurações", "Ativa Frame Configuracoes");
  Botao bot_grafico = new Botao("normal_1", 60, 440, "TextIn: Clique para Visualizar o Gráfico", "Ativa Frame Grafico");
  Botao bot_voltar = new Botao("normal_1", 1160, 200, "TextIn: Clique para Voltar ao Menu", "Desativa Frame Concentrico");
  Botao bot_inverter = new Botao("normal_1", 1160, 280, "TextIn: Clique para Inverter a Corrente", "Inverter Corrente");
  ListaLateral lista = new ListaLateral(330, 605);
  TuboConcentrico tubo_concentrico = new TuboConcentrico();

  //Variaveis Gerais
  String[] lista_comum = { "GERAL1", "GERAL2", "FLUÍDO 1", "FLUÍDO 2", "CALCULO" };
  boolean lista_iniciada = false;
  float f1_in = 20;
  float f2_in = 60;
  float f1_out = 50;
  float f2_out = 30;

  boolean corrente_invertida = false;

  //Funções do Frame
  void Reset() {
    this.tubo_concentrico.iniciado = false;
  }
  void InverterCorrente() {

    if (this.corrente_invertida) {
      this.corrente_invertida = false;
    } else {
      this.corrente_invertida = true;
    }
  }
  //Visualização
  void Mostrar() {
    if (this.lista_iniciada == false) {
      this.lista.CarregaLista("Geral,Fluido 1,Fluido 2,Calculo");
      this.lista.MudaInicial("CALCULO");
      this.lista_iniciada = true;
    }
    fill(0, 0, 255);
    ellipse(20, 20, 10, 10);

    stroke(255, 255, 255);

    fill(100, 100, 100);
    rect(50, 180, 1180, 530);

    stroke(0, 0, 0);

    fill(50, 50, 50);
    rect(51, 580, 1178, 129);

    fill(50, 0, 0);
    rect(61, 615, 1158, 90);

    textSize(20);
    fill(150, 150, 150);
    text("Quadro de Informações:", 70, 605);

    tela.Mostrar();
    barra.Mostrar();
    tubo_concentrico.Mostrar();
    bot_fluido_1.Mostrar();
    bot_fluido_2.Mostrar();
    bot_config.Mostrar();
    bot_grafico.Mostrar();
    bot_voltar.Mostrar();
    bot_inverter.Mostrar();
    lista.Mostrar();


    textSize(40);
    image(f, 55, 205, 50, 50);
    fill(255, 0, 0);
    text("h", 90, 250);
    image(f, 55, 285, 50, 50);
    fill(0, 0, 255);
    text("c", 90, 330);
    image(config, 65, 365, 50, 50);
    image(grafico, 65, 445, 50, 50);
    image(voltar, 1165, 205, 50, 50);
    image(inverter, 1164, 287, 50, 50);
  }
}
class Frame_CascaTubo2 {
  //Objetos do Frame
  Mostrador tela = new Mostrador();
  BarraDigitacao barra = new BarraDigitacao("CascaTubo2");
  Botao bot_fluido_1 = new Botao("normal_1", 60, 200, "TextIn: Clique para Alterar o Fluído Quente", "Ativa Frame ConfigFluido1");
  Botao bot_fluido_2 = new Botao("normal_1", 60, 280, "TextIn: Clique para Alterar o Fluído Frio", "Ativa Frame ConfigFluido2");
  Botao bot_config = new Botao("normal_1", 60, 360, "TextIn: Clique para Alterar as Configurações", "Ativa Frame Configuracoes");
  Botao bot_grafico = new Botao("normal_1", 60, 440, "TextIn: Clique para Visualizar o Gráfico", "Ativa Frame Grafico");
  Botao bot_voltar = new Botao("normal_1", 1160, 200, "TextIn: Clique para Voltar ao Menu", "Desativa Frame CascaTubo2");
  Botao bot_inverter = new Botao("normal_1", 1160, 280, "TextIn: Clique para Inverter a Corrente", "Inverter Corrente");
  ListaLateral lista = new ListaLateral(330, 605);
  TuboCascaTubo2 tubo_cascaTubo2 = new TuboCascaTubo2();

  //Variaveis Gerais
  String[] lista_comum = { "GERAL1", "GERAL2", "FLUÍDO 1", "FLUÍDO 2", "CALCULO" };
  boolean lista_iniciada = false;
  float f1_in = 20;
  float f2_in = 60;
  float f1_out = 50;
  float f2_out = 30;

  boolean corrente_invertida = false;

  //Funções do Frame
  void Reset() {
    this.tubo_cascaTubo2.iniciado = false;
  }
  void InverterCorrente() {

    if (this.corrente_invertida) {
      this.corrente_invertida = false;
    } else {
      this.corrente_invertida = true;
    }
  }
  //Visualização
  void Mostrar() {
    if (this.lista_iniciada == false) {
      this.lista.CarregaLista("Geral,Fluido 1,Fluido 2,Calculo");
      this.lista.MudaInicial("CALCULO");
      this.lista_iniciada = true;
    }
    fill(0, 0, 255);
    ellipse(20, 20, 10, 10);

    stroke(255, 255, 255);

    fill(100, 100, 100);
    rect(50, 180, 1180, 530);

    stroke(0, 0, 0);

    fill(50, 50, 50);
    rect(51, 580, 1178, 129);

    fill(50, 0, 0);
    rect(61, 615, 1158, 90);

    textSize(20);
    fill(150, 150, 150);
    text("Quadro de Informações:", 70, 605);

    tela.Mostrar();
    barra.Mostrar();
    tubo_cascaTubo2.Mostrar();
    bot_fluido_1.Mostrar();
    bot_fluido_2.Mostrar();
    bot_config.Mostrar();
    bot_grafico.Mostrar();
    bot_voltar.Mostrar();
    bot_inverter.Mostrar();
    lista.Mostrar();


    textSize(40);
    image(f, 55, 205, 50, 50);
    fill(255, 0, 0);
    text("h", 90, 250);
    image(f, 55, 285, 50, 50);
    fill(0, 0, 255);
    text("c", 90, 330);
    image(config, 65, 365, 50, 50);
    image(grafico, 65, 445, 50, 50);
    image(voltar, 1165, 205, 50, 50);
    image(inverter, 1164, 287, 50, 50);
  }
}
class Frame_CascaTubo4 {
  //Objetos do Frame
  Mostrador tela = new Mostrador();
  BarraDigitacao barra = new BarraDigitacao("CascaTubo4");
  Botao bot_fluido_1 = new Botao("normal_1", 60, 200, "TextIn: Clique para Alterar o Fluído Quente", "Ativa Frame ConfigFluido1");
  Botao bot_fluido_2 = new Botao("normal_1", 60, 280, "TextIn: Clique para Alterar o Fluído Frio", "Ativa Frame ConfigFluido2");
  Botao bot_config = new Botao("normal_1", 60, 360, "TextIn: Clique para Alterar as Configurações", "Ativa Frame Configuracoes");
  Botao bot_grafico = new Botao("normal_1", 60, 440, "TextIn: Clique para Visualizar o Gráfico", "Ativa Frame Grafico");
  Botao bot_voltar = new Botao("normal_1", 1160, 200, "TextIn: Clique para Voltar ao Menu", "Desativa Frame CascaTubo4");
  Botao bot_inverter = new Botao("normal_1", 1160, 280, "TextIn: Clique para Inverter a Corrente", "Inverter Corrente");
  ListaLateral lista = new ListaLateral(330, 605);
  TuboCascaTubo4 tubo_cascaTubo4 = new TuboCascaTubo4();

  //Variaveis Gerais
  String[] lista_comum = { "GERAL1", "GERAL2", "FLUÍDO 1", "FLUÍDO 2", "CALCULO" };
  boolean lista_iniciada = false;
  float f1_in = 20;
  float f2_in = 60;
  float f1_out = 50;
  float f2_out = 30;
  boolean corrente_invertida = false;


  //Funções do Frame
  void Reset() {
    this.tubo_cascaTubo4.iniciado = false;
  }
  void InverterCorrente() {

    if (this.corrente_invertida) {
      this.corrente_invertida = false;
    } else {
      this.corrente_invertida = true;
    }
  }
  //Visualização
  void Mostrar() {
    if (this.lista_iniciada == false) {
      this.lista.CarregaLista("Geral,Fluido 1,Fluido 2,Calculo");
      this.lista.MudaInicial("CALCULO");
      this.lista_iniciada = true;
    }
    fill(0, 0, 255);
    ellipse(20, 20, 10, 10);

    stroke(255, 255, 255);

    fill(100, 100, 100);
    rect(50, 180, 1180, 530);

    stroke(0, 0, 0);

    fill(50, 50, 50);
    rect(51, 580, 1178, 129);

    fill(50, 0, 0);
    rect(61, 615, 1158, 90);

    textSize(20);
    fill(150, 150, 150);
    text("Quadro de Informações:", 70, 605);

    tela.Mostrar();
    barra.Mostrar();
    tubo_cascaTubo4.Mostrar();
    bot_fluido_1.Mostrar();
    bot_fluido_2.Mostrar();
    bot_config.Mostrar();
    bot_grafico.Mostrar();
    bot_voltar.Mostrar();
    bot_inverter.Mostrar();
    lista.Mostrar();


    textSize(40);
    image(f, 55, 205, 50, 50);
    fill(255, 0, 0);
    text("h", 90, 250);
    image(f, 55, 285, 50, 50);
    fill(0, 0, 255);
    text("c", 90, 330);
    image(config, 65, 365, 50, 50);
    image(grafico, 65, 445, 50, 50);
    image(voltar, 1165, 205, 50, 50);
    image(inverter, 1164, 287, 50, 50);
  }
}
class Frame_CondensadorEvaporador {
  //Objetos do Frame
  Mostrador tela = new Mostrador();
  BarraDigitacao barra = new BarraDigitacao("CondensadorEvaporador");
  Botao bot_fluido_1 = new Botao("normal_1", 60, 200, "TextIn: Clique para Alterar o Fluído Quente", "Ativa Frame ConfigFluido1C");
  Botao bot_fluido_2 = new Botao("normal_1", 60, 280, "TextIn: Clique para Alterar o Fluído Frio", "Ativa Frame ConfigFluido2C");
  Botao bot_config = new Botao("normal_1", 60, 360, "TextIn: Clique para Alterar as Configurações", "Ativa Frame Configuracoes");
  Botao bot_grafico = new Botao("normal_1", 60, 440, "TextIn: Clique para Visualizar o Gráfico", "Ativa Frame Grafico");
  Botao bot_voltar = new Botao("normal_1", 1160, 200, "TextIn: Clique para Voltar ao Menu", "Desativa Frame CondensadorEvaporador");
  Botao bot_inverter = new Botao("normal_1", 1160, 280, "TextIn: Clique para Inverter a Corrente", "Inverter Corrente");
  ListaLateral lista = new ListaLateral(330, 605);
  TuboCondensadorEvaporador tubo_condensador_evaporador = new TuboCondensadorEvaporador();

  //Variaveis Gerais
  String[] lista_comum = { "GERAL1", "GERAL2", "FLUÍDO 1", "FLUÍDO 2", "CALCULO" };
  boolean lista_iniciada = false;
  float f1_in = 20;
  float f2_in = 60;
  float f1_out = 50;
  float f2_out = 30;
  boolean corrente_invertida = false;


  //Funções do Frame
  void Reset() {
    //this.tubo_condensadorEvaporador.iniciado = false;
  }
  void InverterCorrente() {

    if (this.corrente_invertida) {
      this.corrente_invertida = false;
    } else {
      this.corrente_invertida = true;
    }
  }
  //Visualização
  void Mostrar() {

    if (this.lista_iniciada == false) {
      this.lista.CarregaLista("Geral,Fluido 1,Fluido 2,Calculo");
      this.lista.MudaInicial("CALCULO");
      this.lista_iniciada = true;
    }
    fill(0, 0, 255);
    ellipse(20, 20, 10, 10);

    stroke(255, 255, 255);

    fill(100, 100, 100);
    rect(50, 180, 1180, 530);

    stroke(0, 0, 0);

    fill(50, 50, 50);
    rect(51, 580, 1178, 129);

    fill(50, 0, 0);
    rect(61, 615, 1158, 90);

    textSize(20);
    fill(150, 150, 150);
    text("Quadro de Informações:", 70, 605);

    tela.Mostrar();
    barra.Mostrar();
    tubo_condensador_evaporador.Mostrar();
    bot_fluido_1.Mostrar();
    bot_fluido_2.Mostrar();
    bot_config.Mostrar();
    bot_grafico.Mostrar();
    bot_voltar.Mostrar();
    bot_inverter.Mostrar();
    lista.Mostrar();


    textSize(40);
    image(f, 55, 205, 50, 50);
    fill(255, 0, 0);
    text("h", 90, 250);
    image(f, 55, 285, 50, 50);
    fill(0, 0, 255);
    text("c", 90, 330);
    image(config, 65, 365, 50, 50);
    image(grafico, 65, 445, 50, 50);
    image(voltar, 1165, 205, 50, 50);
    image(inverter, 1164, 287, 50, 50);
  }
}
class Frame_ConfigFluido1 {
  //Objetos do Frame
  Botao fechar = new Botao("fechar", 400, 210, "TextIn: Clique para fechar", "Desativa Frame ConfigFluido1");
  TextBoxBoolean temp_1 = new TextBoxBoolean(170, 280);
  TextBoxBoolean temp_2 = new TextBoxBoolean(170, 340);
  TextBoxBoolean calesp = new TextBoxBoolean(170, 400);
  TextBoxBoolean vazmas = new TextBoxBoolean(170, 460);
  //Variaveis Gerais

  //Funções do Frame

  //Visualização
  void Mostrar() {
    this.temp_1.MudaSufixo("ºC");
    this.temp_1.MudaTXTVazio("Insira Aqui!");
    this.temp_2.MudaSufixo("ºC");
    this.temp_2.MudaTXTVazio("Insira Aqui!");
    this.calesp.MudaSufixo("J/kg.K");
    this.calesp.MudaTXTVazio("Insira Aqui!");
    this.vazmas.MudaSufixo("kg/s");
    this.vazmas.MudaTXTVazio("Insira Aqui!");

    //todos
    fill(50, 50, 50);
    stroke(255, 255, 255);
    strokeWeight(2);
    rect(140, 200, 300, 360, 10);
    strokeWeight(1);
    line(140, 240, 440, 240);

    //especifico

    triangle(120, 230, 140, 215, 140, 245);
    fill(255, 255, 255);
    textSize(26);
    text("Fluído Quente", 150, 230);

    textSize(20);
    text("Temperatura entrada:", 170, 270);
    text("Temperatura saída:", 170, 330);
    text("Calor Específico Médio:", 170, 390);
    text("Vazão Mássica:", 170, 450);

    this.fechar.Mostrar();
    this.temp_1.Mostrar();
    this.temp_2.Mostrar();
    this.calesp.Mostrar();
    this.vazmas.Mostrar();
  }
}
class Frame_ConfigFluido1_C {
  //Objetos do Frame
  Botao fechar = new Botao("fechar", 400, 210, "TextIn: Clique para fechar", "Desativa Frame ConfigFluido1C");
  TextBoxBoolean temp_1 = new TextBoxBoolean(170, 280);
  TextBoxBoolean temp_2 = new TextBoxBoolean(170, 340);
  TextBoxBoolean calesp = new TextBoxBoolean(170, 400);
  TextBoxBoolean vazmas = new TextBoxBoolean(170, 460);
  TextBoxBoolean latente = new TextBoxBoolean(170, 520);
  //Variaveis Gerais

  //Funções do Frame

  //Visualização
  void Mostrar() {
    this.temp_1.MudaSufixo("ºC");
    this.temp_1.MudaTXTVazio("Insira Aqui!");
    this.temp_2.MudaSufixo("ºC");
    this.temp_2.MudaTXTVazio("Insira Aqui!");
    this.calesp.MudaSufixo("J/kg.K");
    this.calesp.MudaTXTVazio("Insira Aqui!");
    this.vazmas.MudaSufixo("kg/s");
    this.vazmas.MudaTXTVazio("Insira Aqui!");
    this.latente.MudaSufixo("J/kg");
    this.latente.MudaTXTVazio("Insira Aqui!");
    //todos
    fill(50, 50, 50);
    stroke(255, 255, 255);
    strokeWeight(2);
    rect(140, 200, 300, 360, 10);
    strokeWeight(1);
    line(140, 240, 440, 240);

    //especifico

    triangle(120, 230, 140, 215, 140, 245);
    fill(255, 255, 255);
    textSize(26);
    text("Fluído Quente", 150, 230);

    textSize(20);
    text("Temperatura entrada:", 170, 270);
    text("Temperatura saída:", 170, 330);
    text("Calor Específico Médio:", 170, 390);
    text("Vazão Mássica:", 170, 450);
    text("Calor Latente:", 170, 510);

    this.fechar.Mostrar();
    this.temp_1.Mostrar();
    this.temp_2.Mostrar();
    this.calesp.Mostrar();
    this.vazmas.Mostrar();
    this.latente.Mostrar();
  }
}
class Frame_ConfigFluido2 {

  //Objetos do Frame
  Botao fechar = new Botao("fechar", 400, 210, "TextIn: Clique para fechar", "Desativa Frame ConfigFluido2");
  TextBoxBoolean temp_1 = new TextBoxBoolean(170, 280);
  TextBoxBoolean temp_2 = new TextBoxBoolean(170, 340);
  TextBoxBoolean calesp = new TextBoxBoolean(170, 400);
  TextBoxBoolean vazmas = new TextBoxBoolean(170, 460);
  //Variaveis Gerais

  //Funções do Frame

  //Visualização
  void Mostrar() {
    this.temp_1.MudaSufixo("ºC");
    this.temp_1.MudaTXTVazio("Insira Aqui!");
    this.temp_2.MudaSufixo("ºC");
    this.temp_2.MudaTXTVazio("Insira Aqui!");
    this.calesp.MudaSufixo("J/kg.K");
    this.calesp.MudaTXTVazio("Insira Aqui!");
    this.vazmas.MudaSufixo("kg/s");
    this.vazmas.MudaTXTVazio("Insira Aqui!");

    //todos
    fill(50, 50, 50);
    stroke(255, 255, 255);
    strokeWeight(2);
    rect(140, 200, 300, 360, 10);
    strokeWeight(1);
    line(140, 240, 440, 240);

    //especifico

    triangle(120, 310, 140, 295, 140, 325);
    fill(255, 255, 255);
    textSize(26);
    text("Fluído Frio", 150, 230);

    textSize(20);
    text("Temperatura entrada:", 170, 270);
    text("Temperatura saída:", 170, 330);
    text("Calor Específico Médio:", 170, 390);
    text("Vazão Mássica:", 170, 450);

    this.fechar.Mostrar();
    this.temp_1.Mostrar();
    this.temp_2.Mostrar();
    this.calesp.Mostrar();
    this.vazmas.Mostrar();
  }
}
class Frame_ConfigFluido2_C {

  //Objetos do Frame
  Botao fechar = new Botao("fechar", 400, 210, "TextIn: Clique para fechar", "Desativa Frame ConfigFluido2C");
  TextBoxBoolean temp_1 = new TextBoxBoolean(170, 280);
  TextBoxBoolean temp_2 = new TextBoxBoolean(170, 340);
  TextBoxBoolean calesp = new TextBoxBoolean(170, 400);
  TextBoxBoolean vazmas = new TextBoxBoolean(170, 460);
  TextBoxBoolean latente = new TextBoxBoolean(170, 520);
  //Variaveis Gerais

  //Funções do Frame

  //Visualização
  void Mostrar() {
    this.temp_1.MudaSufixo("ºC");
    this.temp_1.MudaTXTVazio("Insira Aqui!");
    this.temp_2.MudaSufixo("ºC");
    this.temp_2.MudaTXTVazio("Insira Aqui!");
    this.calesp.MudaSufixo("J/kg.K");
    this.calesp.MudaTXTVazio("Insira Aqui!");
    this.vazmas.MudaSufixo("kg/s");
    this.vazmas.MudaTXTVazio("Insira Aqui!");
    this.latente.MudaSufixo("J/kg");
    this.latente.MudaTXTVazio("Insira Aqui!");
    //todos
    fill(50, 50, 50);
    stroke(255, 255, 255);
    strokeWeight(2);
    rect(140, 200, 300, 360, 10);
    strokeWeight(1);
    line(140, 240, 440, 240);

    //especifico

    triangle(120, 310, 140, 295, 140, 325);
    fill(255, 255, 255);
    textSize(26);
    text("Fluído Frio", 150, 230);

    textSize(20);
    text("Temperatura entrada:", 170, 270);
    text("Temperatura saída:", 170, 330);
    text("Calor Específico Médio:", 170, 390);
    text("Vazão Mássica:", 170, 450);
    text("Calor Latente:", 170, 510);

    this.fechar.Mostrar();
    this.temp_1.Mostrar();
    this.temp_2.Mostrar();
    this.calesp.Mostrar();
    this.vazmas.Mostrar();
    this.latente.Mostrar();
  }
}
class Frame_Configuracoes {
  //Objetos do Frame
  Botao fechar = new Botao("fechar", 400, 210, "TextIn: Clique para fechar", "Desativa Frame Configuracoes");
  TextBoxBoolean taxa = new TextBoxBoolean(170, 280);
  TextBoxBoolean area = new TextBoxBoolean(170, 340);
  TextBoxBoolean coef_global = new TextBoxBoolean(170, 400);
  TextBoxBoolean coef_in = new TextBoxBoolean(170, 460);
  TextBoxBoolean coef_ex = new TextBoxBoolean(170, 520);
  //Variaveis Gerais

  //Funções do Frame

  //Visualização
  void Mostrar() {
    this.taxa.MudaSufixo("W");
    this.taxa.MudaTXTVazio("Insira Aqui!");
    this.area.MudaSufixo("m²");
    this.area.MudaTXTVazio("Insira Aqui!");
    this.coef_global.MudaSufixo("W/m².K");
    this.coef_global.MudaTXTVazio("Insira Aqui!");
    this.coef_in.MudaSufixo("W/m².K");
    this.coef_in.MudaTXTVazio("Insira Aqui!");
    this.coef_ex.MudaSufixo("W/m².K");
    this.coef_ex.MudaTXTVazio("Insira Aqui!");
    //todos
    fill(50, 50, 50);
    stroke(255, 255, 255);
    strokeWeight(2);
    rect(140, 200, 300, 360, 10);
    strokeWeight(1);
    line(140, 240, 440, 240);

    //especifico

    triangle(120, 390, 140, 375, 140, 405);
    fill(255, 255, 255);
    textSize(26);
    text("Configurações", 150, 230);

    textSize(20);
    text("Taxa de Transferência:", 170, 270);
    text("Área do Trocador:", 170, 330);
    text("Coeficiente Global:", 170, 390);
    text("Coef. Filme Interno:", 170, 450);
    text("Coef. Filme Externo:", 170, 510);

    this.fechar.Mostrar();
    this.taxa.Mostrar();
    this.area.Mostrar();
    this.coef_global.Mostrar();
    this.coef_in.Mostrar();
    this.coef_ex.Mostrar();
  }
}
class Frame_Grafico {
  //Objetos do Frame

  //Variaveis Gerais

  //Funções do Frame

  //Visualização
  void Mostrar() {
  }
}