Tarefas TAREFAS = new Tarefas();

class Tarefas {

  //Vetor Tarefa por Letra e Codigo
  String[] tarefa_letra = new String[512];
  String[] tarefa_codigo = new String[512];
  String[] codigo = new String[512];
  int indice_codigo = 0;
  //Inicialização
  Tarefas() {
    for (int a = 0; a < this.tarefa_letra.length; a++) {

      this.tarefa_letra[a] = "";
      this.tarefa_codigo[a] = "";
      this.codigo[a]= "";
    }
  }

  //Função Tarefa

  void AlteraTarefaLetra(String tarefa, char letra) {

    this.tarefa_letra[int(letra)] = tarefa;
  }
  void AlteraTarefaCodigo(String tarefa, String n_codigo) {

    this.tarefa_codigo[this.indice_codigo] = tarefa;
    this.codigo[this.indice_codigo] = n_codigo;
    this.indice_codigo++;
  }
  void Tarefa(String tarefa) {
    if (tarefa == "") {
      //Livre Execução
    } else if (tarefa == "Ativa Frame Inicial") {
      FRAMES.AtivaFrame(0);
    } else if (tarefa == "Ativa Frame Concentrico") {
      this.Tarefa("Desativa Frame Inicial");
      FRAMES.AtivaFrame(1);
    } else if (tarefa == "Ativa Frame CascaTubo2") {
      this.Tarefa("Desativa Frame Inicial");
      FRAMES.AtivaFrame(2);
    } else if (tarefa == "Ativa Frame CascaTubo4") {
      this.Tarefa("Desativa Frame Inicial");
      FRAMES.AtivaFrame(3);
    } else if (tarefa == "Ativa Frame CondensadorEvaporador") {
      this.Tarefa("Desativa Frame Inicial");
      FRAMES.AtivaFrame(4);
    } else if (tarefa == "Ativa Frame ConfigFluido1") {
      if (!FRAMES.EstadoFrame(6)&&!FRAMES.EstadoFrame(7)&&!FRAMES.EstadoFrame(8)&&!FRAMES.EstadoFrame(9)&&!FRAMES.EstadoFrame(10)) {
        FRAMES.AtivaFrame(5);
      }
    } else if (tarefa == "Ativa Frame ConfigFluido2") {
      if (!FRAMES.EstadoFrame(5)&&!FRAMES.EstadoFrame(7)&&!FRAMES.EstadoFrame(8)&&!FRAMES.EstadoFrame(9)&&!FRAMES.EstadoFrame(10)) {
        FRAMES.AtivaFrame(6);
      }
    } else if (tarefa == "Ativa Frame ConfigFluido1C") {
      if (!FRAMES.EstadoFrame(6)&&!FRAMES.EstadoFrame(7)&&!FRAMES.EstadoFrame(8)&&!FRAMES.EstadoFrame(5)&&!FRAMES.EstadoFrame(10)) {
        FRAMES.AtivaFrame(9);
      }
    } else if (tarefa == "Ativa Frame ConfigFluido2C") {
      if (!FRAMES.EstadoFrame(5)&&!FRAMES.EstadoFrame(7)&&!FRAMES.EstadoFrame(8)&&!FRAMES.EstadoFrame(9)&&!FRAMES.EstadoFrame(6)) {
        FRAMES.AtivaFrame(10);
      }
    } else if (tarefa == "Ativa Frame Configuracoes") {
      if (!FRAMES.EstadoFrame(6)&&!FRAMES.EstadoFrame(5)&&!FRAMES.EstadoFrame(8)&&!FRAMES.EstadoFrame(9)&&!FRAMES.EstadoFrame(10)) {
        FRAMES.AtivaFrame(7);
      }
    } else if (tarefa == "Ativa Frame Grafico") {
      if (!FRAMES.EstadoFrame(6)&&!FRAMES.EstadoFrame(7)&&!FRAMES.EstadoFrame(5)&&!FRAMES.EstadoFrame(9)&&!FRAMES.EstadoFrame(10)) {
        //ativar num futuro proximo, se estiver lendo isso num futuro distante de 2015 é porque algo está errado...
        //FRAMES.AtivaFrame(8);
      }
    } else if (tarefa == "Desativa Frame Inicial") {
      FRAMES.DesativaFrame(0);
      FRAMES.FRAME_concentrico.Reset();
      FRAMES.FRAME_cascaTubo2.Reset();
      FRAMES.FRAME_cascaTubo4.Reset();
      FRAMES.FRAME_condensadorEvaporador.Reset();
    } else if (tarefa == "Desativa Frame Concentrico") {
      this.Tarefa("Ativa Frame Inicial");
      FRAMES.DesativaFrame(1);
    } else if (tarefa == "Desativa Frame CascaTubo2") {
      this.Tarefa("Ativa Frame Inicial");
      FRAMES.DesativaFrame(2);
    } else if (tarefa == "Desativa Frame CascaTubo4") {
      this.Tarefa("Ativa Frame Inicial");
      FRAMES.DesativaFrame(3);
    } else if (tarefa == "Desativa Frame CondensadorEvaporador") {
      this.Tarefa("Ativa Frame Inicial");
      FRAMES.DesativaFrame(4);
    } else if (tarefa == "Desativa Frame ConfigFluido1") {
      FRAMES.DesativaFrame(5);
    } else if (tarefa == "Desativa Frame ConfigFluido2") {
      FRAMES.DesativaFrame(6);
    } else if (tarefa == "Desativa Frame Configuracoes") {
      FRAMES.DesativaFrame(7);
    } else if (tarefa == "Desativa Frame Grafico") {
      FRAMES.DesativaFrame(8);
    } else if (tarefa == "Desativa Frame ConfigFluido1C") {
      FRAMES.DesativaFrame(9);
    } else if (tarefa == "Desativa Frame ConfigFluido2C") {
      FRAMES.DesativaFrame(10);
    } else if (tarefa == "Ativa Mostrar Botoes Inicial") {
      FRAMES.FRAME_inicial.mostrar_opcoes = true;
      TAREFAS.AlteraTarefaLetra("", ' ');
    } else if (tarefa == "TextIn: Clique para Alterar o Fluído Quente") {
      fill(120, 0, 0);
      textSize(20);
      text("Clique para alterar o fluído Quente.", mouseX+40, mouseY);
    } else if (tarefa == "TextIn: Clique para Alterar o Fluído Frio") {
      fill(120, 0, 0);
      textSize(20);
      text("Clique para alterar o fluído Frio.", mouseX+40, mouseY);
    } else if (tarefa == "TextIn: Clique para Alterar as Configurações") {
      fill(120, 0, 0);
      textSize(20);
      text("Clique para alterar as configurações.", mouseX+40, mouseY);
    } else if (tarefa == "TextIn: Clique para Visualizar o Gráfico") {
      fill(120, 0, 0);
      textSize(20);
      text("Clique para visualizar o gráfico.", mouseX+40, mouseY);
    } else if (tarefa == "TextIn: Clique para Voltar ao Menu") {
      fill(120, 0, 0);
      textSize(20);
      text("Clique para voltar ao menu.", mouseX-300, mouseY);
    } else if (tarefa == "TextIn: Clique para fechar") {
      fill(120, 0, 0);
      textSize(20);
      text("Clique para fechar.", mouseX+40, mouseY);
    } else if (tarefa == "TextIn: Clique para Inverter a Corrente") {
      fill(120, 0, 0);
      textSize(20);
      text("Clique para Inverter a Corrente.", mouseX-350, mouseY);
    } else if (tarefa == "Editar Tco") {
      if (FRAMES.EstadoFrame(1)) { 
        FRAMES.FRAME_concentrico.barra.InstalaTemplate("Editar Tco");
      }
      if (FRAMES.EstadoFrame(2)) { 
        FRAMES.FRAME_cascaTubo2.barra.InstalaTemplate("Editar Tco");
      }
      if (FRAMES.EstadoFrame(3)) { 
        FRAMES.FRAME_cascaTubo4.barra.InstalaTemplate("Editar Tco");
      }
      if (FRAMES.EstadoFrame(4)) { 
        FRAMES.FRAME_condensadorEvaporador.barra.InstalaTemplate("Editar Tco");
      }
    } else if (tarefa == "Editar Tci") {
      if (FRAMES.EstadoFrame(1)) { 
        FRAMES.FRAME_concentrico.barra.InstalaTemplate("Editar Tci");
      }
      if (FRAMES.EstadoFrame(2)) { 
        FRAMES.FRAME_cascaTubo2.barra.InstalaTemplate("Editar Tci");
      }
      if (FRAMES.EstadoFrame(3)) { 
        FRAMES.FRAME_cascaTubo4.barra.InstalaTemplate("Editar Tci");
      }
      if (FRAMES.EstadoFrame(4)) { 
        FRAMES.FRAME_condensadorEvaporador.barra.InstalaTemplate("Editar Tci");
      }
    } else if (tarefa == "Editar Thi") {
      if (FRAMES.EstadoFrame(1)) { 
        FRAMES.FRAME_concentrico.barra.InstalaTemplate("Editar Thi");
      }
      if (FRAMES.EstadoFrame(2)) { 
        FRAMES.FRAME_cascaTubo2.barra.InstalaTemplate("Editar Thi");
      }
      if (FRAMES.EstadoFrame(3)) { 
        FRAMES.FRAME_cascaTubo4.barra.InstalaTemplate("Editar Thi");
      }
      if (FRAMES.EstadoFrame(4)) { 
        FRAMES.FRAME_condensadorEvaporador.barra.InstalaTemplate("Editar Thi");
      }
    } else if (tarefa == "Editar Tho") {
      if (FRAMES.EstadoFrame(1)) { 
        FRAMES.FRAME_concentrico.barra.InstalaTemplate("Editar Tho");
      }
      if (FRAMES.EstadoFrame(2)) { 
        FRAMES.FRAME_cascaTubo2.barra.InstalaTemplate("Editar Tho");
      }
      if (FRAMES.EstadoFrame(3)) { 
        FRAMES.FRAME_cascaTubo4.barra.InstalaTemplate("Editar Tho");
      }
      if (FRAMES.EstadoFrame(4)) { 
        FRAMES.FRAME_condensadorEvaporador.barra.InstalaTemplate("Editar Tho");
      }
    } else if (tarefa == "Inverter Corrente") {
      if (FRAMES.EstadoFrame(1)) { 
        FRAMES.FRAME_concentrico.InverterCorrente();
      }
      if (FRAMES.EstadoFrame(2)) { 
        FRAMES.FRAME_cascaTubo2.InverterCorrente();
      }
      if (FRAMES.EstadoFrame(3)) { 
        FRAMES.FRAME_cascaTubo4.InverterCorrente();
      }
      if (FRAMES.EstadoFrame(4)) { 
        FRAMES.FRAME_condensadorEvaporador.InverterCorrente();
      }
    }
  }
  void TarefaLetra(char letra) {
    //println(int(letra));
    this.Tarefa(this.tarefa_letra[int(letra)]);
  }

  void TarefaCodigo(String texto) {
    for (int a = 0; a<256; a++) {
      if (this.codigo[a] == texto) {
        this.Tarefa(this.tarefa_codigo[a]);
      }
    }
  }
}